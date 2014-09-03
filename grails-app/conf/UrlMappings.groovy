class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

       // "/register"(view:"/test/index")
        "/"(view:"/index")
        "500"(view:'/error')
	}
}
