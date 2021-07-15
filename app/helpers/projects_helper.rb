module ProjectsHelper

	def project_thumbnail project
		img = project.image.present? ? project.image.thumbnail.url : "placeholder.png"
		image_tag img, class: "project-thumb"
	end
end
