//Zip Code Bean
package com.form;

import com.form.Serializeable;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;


public class ZipCode implements Serializeable {
  @NotNull
  @Size(min=5, max=5)
  private String zipCode;

public void setZipCode(String zipCode){
this.zipCode=zipCode;
}
public String getZipCode(){
return zipCode;
} 
}
