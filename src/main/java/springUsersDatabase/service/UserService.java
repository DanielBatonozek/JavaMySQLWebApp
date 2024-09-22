package springUsersDatabase.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import springUsersDatabase.model.User;
import springUsersDatabase.model.UserDTO;
import springUsersDatabase.repository.MySqlRepository;

import java.time.LocalDate;
import java.util.Set;

@Service
public class UserService {

    @Autowired
    MySqlRepository mySqlRepository;

    /**
     * Adds users to the database if they are valid according to:
     * isValidName, isValidPhoneNumber, isValidGender, isValidEmail, isValidInsurance, isValidBirthdate.
     * @param userDTO uses DTO class with name, surname, phoneNumber, gender, email, typeOfInsurance attributes
     * @return true - user was added, false - user was not added
     */
    public boolean addUser(UserDTO userDTO) {
        String name = standardizeForSql(userDTO.getName());
        String surname = standardizeForSql(userDTO.getSurname());
        String phoneNumber = standardizePhoneNumber(userDTO.getPhoneNumber());
        String gender = standardizeForSql(userDTO.getGender());
        String email = userDTO.getEmail().trim();
        String typeOfInsurance = standardizeForSql(userDTO.getTypeOfInsurance());
        if (isValidName(name) &&
           isValidName(surname) &&
           isValidPhoneNumber(phoneNumber) &&
           isValidGender(gender) &&
           isValidEmail(email) &&
           isValidInsurance(typeOfInsurance) &&
           isValidBirthdate(userDTO.getDateOfBirth())) {
            mySqlRepository.save(new User(name, surname, gender, userDTO.getDateOfBirth(),
                    userDTO.getEmail(), phoneNumber, userDTO.getTypeOfInsurance()));
            return true;
        }
        return false;
    }

    /**
     * Remove user by his id.
     * @param userDTO uses DTO class with id attribute.
     */
    public void removeUser(UserDTO userDTO) {
        mySqlRepository.deleteById(userDTO.getId());
    }

    /**
     * Removes the leading and trailing spaces and convert the given value to lowercase.
     * @param name String value to convert.
     * @return Trimmed and lowercase String value.
     */
    public String standardizeForSql(String name) {
        return name.trim().toLowerCase();
    }

    /**
     * Trims given value.
     * @param phoneNumber String phone number value.
     * @return trimmed value.
     */
    public String standardizePhoneNumber(String phoneNumber) {
        return phoneNumber.trim();
    }

    /**
     * Validate whether the name is composed of letters
     * and does not exceed length of 64 letters.
     * @param name String name value.
     * @return true - valid name, false - invalid name
     */
    public boolean isValidName(String name) {
        if (name.isEmpty() || name.length() > 64) {
            return false;
        }
        for (int i = 0; i < name.length(); i++) {
            if (!Character.isLetter(name.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    /**
     * Validate whether the phone number is composed of numbers,
     * has five to sixteen symbols.
     * Can contain prefix symbol "+".
     * @param phoneNumber String phone number value, can contain "+" prefix.
     * @return true - valid phone number, false - invalid phone number
     */
    public boolean isValidPhoneNumber(String phoneNumber) {
        if (phoneNumber.length() < 5 || phoneNumber.length() > 16 || (!phoneNumber.startsWith("+") && !Character.isDigit(phoneNumber.charAt(0)))) {
            return false;
        }
        for (int i = 1; i < phoneNumber.length(); i++) {
            if (!Character.isDigit(phoneNumber.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    /**
     * Validate whether the given value is male, or female.
     * Value can be in any letter case.
     * @param gender String value to be validated.
     * @return true - valid gender, false - invalid gender
     */
    public boolean isValidGender(String gender) {
        return (gender.equalsIgnoreCase("male") || gender.equalsIgnoreCase("female"));
    }

    /**
     * Validate whether the given date is before current date.
     * @param birthDate LocalDate value to be validated.
     * @return true - valid date, false - invalid date
     */
    public boolean isValidBirthdate(LocalDate birthDate) {
        return (birthDate.isBefore(LocalDate.now()));
    }

    /**
     * Validate whether the email contains "@" symbol, has less than 64 symbols.
     * Can contain only letters, numbers and dots.
     * Local and domain parts of email can not start or end with a dot.
     * Domain part has to contain a dot.
     * @param email String value to be validated.
     * @return true - valid email, false - invalid email
     */
    public boolean isValidEmail(String email) {
        if (email.length() > 64 || !email.contains("@") || email.contains(" ")) {
            return false;
        }
        String localPart = email.substring(0, email.indexOf("@"));
        String domain = email.substring(email.indexOf("@") + 1);
        for (char letter : (localPart + domain).toCharArray()) {
            if (!Character.isLetter(letter) && !Character.isDigit(letter) && !(letter == '.')) { //chyba pro tecky? asi opraveno odzkouset
                return false;
            }
        }
        return !localPart.isEmpty() &&
                !domain.isEmpty() &&
                !localPart.startsWith(".") &&
                !localPart.endsWith(".") &&
                !domain.startsWith(".") &&
                !domain.endsWith(".") && //chyba pro konec a zacatek tecky? asi opraveno odzkouset
                !(localPart + domain).contains("..") &&
                domain.contains(".");
    }

    /**
     * Validate whether the insurance is private or public.
     * @param insurance String value to be validated
     * @return true - valid insurance, false - invalid insurance
     */
    public boolean isValidInsurance(String insurance) {
        Set<String> typesOfInsurance = Set.of("private", "public");
        return typesOfInsurance.contains(insurance);
    }
}
