package filterplus.example

class Department {

    String name

    static hasMany = [employees: Employee]

    static constraints = {
    }
}
