package filterplus.example

class Employee {

    String firstName
    String lastName
    String email
    String address
    String phoneNo
    String designation
    String joiningDate

    static belongsTo = [department: Department]
    static hasMany = [projects: Project]

    static mapping = {
        sort name: "asc"
    }

    static constraints = {
        firstName nullable: true
        lastName nullable: true
        email nullable: true
        address nullable: true
        phoneNo nullable: true
        designation nullable: true
        joiningDate nullable: true
    }
}
