class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(controller: 'participateSurvey')
        "/admin"(controller: 'survey')
		"500"(view:'/error')
	}
}
