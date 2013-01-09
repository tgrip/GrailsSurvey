import com.tgrip.survey.Person
import com.tgrip.survey.Role
import com.tgrip.survey.PersonRole

class BootStrap {

    def init = { servletContext ->
        def admin = Person.findOrCreateWhere(username: 'admin', password: '123123', enabled: true)
        def role = new Role(authority: 'ADMIN_ROLE').save()
        new PersonRole(person: admin, role: role).save()
    }

    def destroy = {
    }
}
