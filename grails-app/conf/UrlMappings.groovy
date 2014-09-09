class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/logout"(view:"logout")
        "/"(view:"index")
        "500"(view:'/error')
	}
}
