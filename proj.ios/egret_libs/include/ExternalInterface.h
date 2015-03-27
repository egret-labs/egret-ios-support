//
//  ExternalInterface.h
//  EgretNativeFramework
//
//  Created by wei huang on 10/29/14.
//  Copyright (c) 2014 egret. All rights reserved.
//

#ifndef __EgretNativeFramework__ExternalInterface__
#define __EgretNativeFramework__ExternalInterface__


#include <map>
#include <string>


class IExternalInterface {
public:
    virtual void call(const std::string& value) = 0;
};

class PluginListener {
public:
    virtual void receivedInfo(std::string info) = 0;
};

class ExternalInterface : public PluginListener {
private:
    static std::map<std::string, IExternalInterface *> callBackList;
    
public:
    static void run();
    static void call(const std::string& name, const std::string& value);
    
    static void addCallback(const std::string& name, IExternalInterface * value);
    
    void receivedInfo(std::string info);
    
    static NSString * dictionaryToJsonString(NSDictionary *dict);
    static id stringToJson(const std::string& string);
};

#endif /* defined(__EgretNativeFramework__ExternalInterface__) */
