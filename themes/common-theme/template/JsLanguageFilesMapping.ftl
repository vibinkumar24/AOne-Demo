/*******************************************************************************
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 *******************************************************************************/

<#-- Use the createJsLanguageFileMapping service to create or update the JsLanguageFilesMapping.java. You will still need to compile thereafter -->

package org.apache.ofbiz.common;

import java.util.HashMap;
import java.util.Map;

<#-- The comment in UPPERCASE below is dynamically put in the JsLanguageFilesMapping.java generated file, so please keep it... -->

public final class JsLanguageFilesMapping {

    // DO NOT EDIT THIS FILE!  THIS IS AUTO GENERATED AND WILL GET WRITTEN OVER PERIODICALLY WHEN THE DATA CHANGE
    // Rather use the createJsLanguageFileMapping service to create or update it. You will still need to compile thereafter

    public static class DateJs {

        private static Map<String, String> localeFiles = new HashMap<>();
        private static String defaultDateJs = "/common/js/jquery/plugins/datejs/date-en-US.js";

        static {
            <#list datejs.keySet() as dateJsFiles>
            <#assign filePath = datejs.get(dateJsFiles) />
            localeFiles.put("${dateJsFiles}", "${filePath}");
            </#list>
        }

        public static String getFilePath(String locale) {
            if (DateJs.localeFiles.containsKey(locale)) {
                return DateJs.localeFiles.get(locale);
            }
            return DateJs.defaultDateJs;
        }

    }

    public static class JQuery {
        private static Map<String, String> localeFiles = new HashMap<>();
        private static String defaultDateJs = "/common/js/jquery/ui/i18n/datepicker-en.js";

        static {
            <#list jquery.keySet() as jqueryFiles>
            <#assign filePath = jquery.get(jqueryFiles) />
            localeFiles.put("${jqueryFiles}", "${filePath}");
            </#list>
        }

        public static String getFilePath(String locale) {
            if (DateJs.localeFiles.containsKey(locale)) {
                return JQuery.localeFiles.get(locale);
            }
            return JQuery.defaultDateJs;
        }

    }

    public static class Validation {
        private static Map<String, String> localeFiles = new HashMap<>();
        <#--TODO Handle defaultValidation as messages_en is missing with the default distribution-->
        private static String defaultValidation = "/common/js/node_modules/jquery-validation/dist/localization/messages_en.js";

        static {
            <#list validation.keySet() as validationFiles>
            <#assign filePath = validation.get(validationFiles) />
            localeFiles.put("${validationFiles}", "${filePath}");
            </#list>
        }

        public static String getFilePath(String locale) {
            if (Validation.localeFiles.containsKey(locale)) {
                return Validation.localeFiles.get(locale);
            }
            return Validation.defaultValidation;
        }
    }

    public static class DateTime {
        private static Map<String, String> localeFiles = new HashMap<>();
        private static String defaultDateTime = "/common/js/jquery/plugins/datetimepicker/i18n/jquery-ui-timepicker-en.js";

        static {
            <#list dateTime.keySet() as dateTimeFiles>
            <#assign filePath = dateTime.get(dateTimeFiles)! />
            localeFiles.put("${dateTimeFiles}", "${filePath}");
            </#list>
        }

        public static String getFilePath(String locale) {
            if (DateTime.localeFiles.containsKey(locale)) {
                return DateTime.localeFiles.get(locale);
            }
            return DateTime.defaultDateTime;
        }
    }

    public static class Select2 {
        private static Map<String, String> localeFiles = new HashMap<>();
        private static String defaultSelect2 = "/common/js/jquery/plugins/select2/js/i18n/en.js";

        static {
            <#list select2.keySet() as select2Files>
              <#assign filePath = select2.get(select2Files)! />
            localeFiles.put("${select2Files}", "${filePath}");
            </#list>
        }

        public static String getFilePath(String locale) {
            if (Select2.localeFiles.containsKey(locale)) {
                return Select2.localeFiles.get(locale);
            }
            return Select2.defaultSelect2;
        }
    }
}
