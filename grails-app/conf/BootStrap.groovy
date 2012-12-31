import com.tgrip.survey.Person

class BootStrap {

    def init = { servletContext ->
        new Person(username: 'admin', password: '123123', enabled: true).save()
    }
    def destroy = {
    }
}
