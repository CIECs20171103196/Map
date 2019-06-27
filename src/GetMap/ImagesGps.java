package GetMap;

import java.io.File;
import java.io.IOException;
import java.util.Collection;

import com.drew.imaging.ImageProcessingException;
import com.drew.imaging.jpeg.JpegMetadataReader;
import com.drew.metadata.Metadata;
import com.drew.metadata.MetadataException;
import com.drew.metadata.Tag;
import com.drew.metadata.exif.GpsDirectory;

public class ImagesGps {
	 public static void main(String[] args) throws ImageProcessingException,IOException,MetadataException {
	        File jpegFile = new File("C:\\Users\\Administrator\\Desktop\\微信图片_20190620000446.jpg");
	        Metadata metadata = JpegMetadataReader.readMetadata(jpegFile);
	        GpsDirectory gps = metadata.getDirectory(GpsDirectory.class);
	        if(gps != null) {
	        	Collection<Tag> tags = gps.getTags();
	        	for(Tag tag : tags) {
	        		System.out.println(tag);
	        	}
	        }
	    }
	}


