import com.tgrip.survey.Person
import com.tgrip.survey.Role
import com.tgrip.survey.PersonRole

class BootStrap {

    def init = { servletContext ->
//        if (Person.count) {
            def admin = Person.findOrCreateWhere(username: 'admin', password: '123123', enabled: true).save()
            def role = Role.findOrCreateWhere(authority: 'ADMIN_ROLE').save()
            PersonRole.findOrCreateWhere(person: admin, role: role).save()
        Person.findOrCreateWhere(username: 'surveyUser', password: '123123', enabled: true).save()
//        }
    }

    def destroy = {
    }
}
