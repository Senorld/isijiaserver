class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/logout/$action"(controller: "logout")
        "/"(controller:"home")
        "500"(view:'/error')
	}
}
