package filterplus.example

class Project {

    String name
    String description
    static belongsTo = [Employee]
    static hasMany = [workers: Employee]

    static constraints = {
    }
}
