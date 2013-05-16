namespace :upload do
    desc 'uploads courses csv data'
    task :course => :environment do
        require 'csv'
        attributes = ['call_number','course_title','start_time','end_time','days','building','room','professor']
        #puts attributes
        i = 0
        CSV.foreach(Rails.root+"courses.csv",{:headers=>true}) do |row|

            course = Course.new

            attributes.zip(row).each do |attribute, data|
                course[attribute] = data[1]
                #puts attribute
                #puts data
            end
            course['_id'] = course['call_number']
            puts course.course_title
            course.save
        end
    end
end
