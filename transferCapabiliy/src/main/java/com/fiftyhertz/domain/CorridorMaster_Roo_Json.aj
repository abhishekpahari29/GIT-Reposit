// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.fiftyhertz.domain;

import com.fiftyhertz.domain.CorridorMaster;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect CorridorMaster_Roo_Json {
    
    public String CorridorMaster.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public String CorridorMaster.toJson(String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").serialize(this);
    }
    
    public static CorridorMaster CorridorMaster.fromJsonToCorridorMaster(String json) {
        return new JSONDeserializer<CorridorMaster>().use(null, CorridorMaster.class).deserialize(json);
    }
    
    public static String CorridorMaster.toJsonArray(Collection<CorridorMaster> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static String CorridorMaster.toJsonArray(Collection<CorridorMaster> collection, String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").serialize(collection);
    }
    
    public static Collection<CorridorMaster> CorridorMaster.fromJsonArrayToCorridorMasters(String json) {
        return new JSONDeserializer<List<CorridorMaster>>().use(null, ArrayList.class).use("values", CorridorMaster.class).deserialize(json);
    }
    
}