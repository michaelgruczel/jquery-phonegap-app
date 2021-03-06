#!/usr/bin/ruby -w

def writeFile(content, name)
    begin
        file = File.open("./output/#{name}", "w")
        file.write(content)
        puts "write file ./output/#{name}" 
    rescue IOError => e
    #some error occur, dir not writable etc.
    ensure
    file.close unless file == nil
    end
end

def generateIndexHtml()
    html = ""
    html << '<!DOCTYPE html>' 
    html << '<html>' 
    html << '<head>' 
    html << '	<title>Suche nach Kennzahlen</title>' 
    html << '	<meta name="viewport" content="width=device-width, initial-scale=1">' 
    html << '	<!--'
    html << '        <link rel="stylesheet" href="http://code.jquery.com/mobile/1.2.0/jquery.mobile-1.2.0.min.css" />'
    html << '	<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>'
    html << '	<script src="http://code.jquery.com/mobile/1.2.0/jquery.mobile-1.2.0.min.js"></script>'
    html << '        -->'
    html << '        <link rel="stylesheet" href="./jquery.mobile-1.2.0.min.css" />'
    html << '	<script src="./jquery-1.8.2.min.js"></script>'
    html << '	<script src="./jquery.mobile-1.2.0.min.js"></script>'
    html << '</head>' 
    html << '<body>' 
    html << ''
    html << '<div data-role="page">'
    html << ''
    html << '	<div data-role="header">'
    html << '		<h1>Kennzahlen-App</h1>'
    html << '	</div><!-- /header -->'
    html << ''
    html << ''        
    html << '<!--        <div data-role="content" align="center">'
    html << ''
    html << '         <img src="startImage.jpg" width="70%"/>'
    html << '        </div>-->'
    html << ''        
    html << ''
    html << '	<div data-role="content">'
    html << '		<h3>Suche starten</h3>'
    html << '                <a href="main.html" data-role="button" data-icon="arrow-r">los gehts</a>'
    html << '	</div>'
    html << ''
    html << '</div><!-- /page -->'
    html << ''
    html << '</body>'
    html << '</html>'
    html << ''
    writeFile(html, "index.html")
end

def generateMenuHtml()
    html = ""
    html << '<!DOCTYPE html>' 
    html << '<html>' 
    html << '<head>' 
    html << '	<title>Kennzahlen-App</title>'
    html << '	<meta name="viewport" content="width=device-width, initial-scale=1">' 
    html << '	<!--'
    html << '        <link rel="stylesheet" href="http://code.jquery.com/mobile/1.2.0/jquery.mobile-1.2.0.min.css" />'
    html << '	<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>'
    html << '	<script src="http://code.jquery.com/mobile/1.2.0/jquery.mobile-1.2.0.min.js"></script>'
    html << '        -->'
    html << '        <link rel="stylesheet" href="./jquery.mobile-1.2.0.min.css" />'
    html << '	<script src="./jquery-1.8.2.min.js"></script>'
    html << '	<script src="./jquery.mobile-1.2.0.min.js"></script>'
    html << '</head>' 
    html << '<body>'
    html << ''
    html << '<div data-role="page">'
    html << ''
    html << ''
    html << '	<div data-role="header">'
    html << '		<h1>Suche nach Kennzahlen</h1>'
    html << '	</div><!-- /header -->'
    html << ''
    html << '       <div data-role="content">'
    html << '        <ul data-role="listview" data-inset="true" data-filter="true">'
    html << '	<li><a href="g.html">Th&uuml;ringen - Gera - g</a></li>'
    html << '	<li><a href="gap.html">Bayer - Garmisch-Partenkirchen - gp</a></li>'
    html << '	<li><a href="ge.html">Nordrhein-Westfalen - Gelsenkirchen - ge</a></li>'
    html << '	<li><a href="gö.html">Niedersachsen - G&ouml;ttingen - g&ouml;</a></li>'
    html << '	<li><a href="hgw.html">Mecklenburg-Vorpommern - Greifswald - hgw</a></li>'
    html << '	<li><a href="hh.html">Hamburg - Hamburg - hh</a></li>'
    html << '        <li><a href="hi.html">Niedersachsen - Hildesheim - hi</a></li>'
    html << '        </ul>'
    html << '       </div>'
    html << ''
    html << '<!--	<div data-role="content">'
    html << '		<h3>Besuchen sie auch unsere Webseite</h3>'
    html << '                <a href="index.html" data-role="button" data-icon="home">zur Webseite</a>'
    html << '	</div>-->'
    html << ''
    html << ''
    html << '</div><!-- /page -->'
    html << ''
    html << '</body>'
    html << '</html>'
    writeFile(html, "main.html")
end

def generateRegionHtml(content, kennzeichen, regionFile, website)
    html = ""
    html << "<!DOCTYPE html>" 
    html << "<html><head><title>#{kennzeichen}</title>"
    html << '<meta name="viewport" content="width=device-width, initial-scale=1">' 
    html << '<!--'
    html << '<link rel="stylesheet" href="http://code.jquery.com/mobile/1.2.0/jquery.mobile-1.2.0.min.css" />'
    html << '<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>'
    html << '<script src="http://code.jquery.com/mobile/1.2.0/jquery.mobile-1.2.0.min.js"></script>'
    html << '-->'
    html << '<link rel="stylesheet" href="./jquery.mobile-1.2.0.min.css" />'
    html << '<script src="./jquery-1.8.2.min.js"></script>'
    html << '<script src="./jquery.mobile-1.2.0.min.js"></script>'
    html << '</head><body>'
    html << ''
    html << '<div data-role="page">'
    html << '<div data-role="header">'
    html << "<h1>#{kennzeichen}</h1>"
    html << '</div>' 
    html << ''
    html << '<div data-role="content" align="center">'
    html << '<a href="main.html" data-role="button" data-icon="arrow-l">zur&uuml;ck</a>'
    html << "#{content}"
    html << ''
    html << "<img src=\"#{kennzeichen}.png\" alt=\"hh\"><br/>"
    html << ''
    if(website == "")
        puts "WARNING: no website found for #{regionFile}"
    else
        html << "<a href=\"http://#{website}\" data-role=\"button\" data-icon=\"arrow-r\" rel=\"external\">zur Webpr&auml;senz der Region</a>"
    end    
    html << ''
    html << '</div>'
    html << ''
    html << '</body></html>'
    writeFile(html, "#{kennzeichen}.html")
end

def generateRegionPage(regionFile)
    #Read File and close
    counter = 1
    website = ""
    content = ""
    kennzeichen = File.basename(regionFile, ".*") 
    html = ""
    begin
        file = File.new(regionFile, "r")
        while (line = file.gets)
            #puts "#{counter}: #{line}"
            # find website
            if(line.start_with?("Webpräsenz:"))
                website = line.split[1]
                #puts "Website is: #{website}"
            else
                line = line.gsub("ü", "&uuml;")
                line = line.gsub("ö", "&ouml;")
                line = line.gsub("ä", "&auml;")
                line = line.gsub("ß", "&sszlig;")
                line = line.gsub("²", "&sup2;")
                line = line.gsub("Â", "")
                content << line << "<br />"                
            end
          counter = counter + 1
        end
        file.close
    rescue => err
    puts "ERROR: Exception: #{err}"
    err
    end
    generateRegionHtml(content, kennzeichen, regionFile, website)

end

# find files
puts "#########################################################################"
puts "read input files start ..."
listOfRegionFiles = Dir["./input/*.txt"]
puts "found #{listOfRegionFiles.length} files: #{listOfRegionFiles}"
puts "... read input files done"
puts ""
puts "generating region htmls start ..."
counter = 0
for regionFile in listOfRegionFiles do  
    puts "processing #{counter}: #{regionFile}"
    generateRegionPage(regionFile)
    counter = counter + 1
end
puts "generating index html start ..."
generateIndexHtml
puts "... generating index html done"
puts "generating main html start ..."
generateMenuHtml
puts "... generating main html done"
puts ""
puts "done check Warnings and errors"
puts "#########################################################################"





