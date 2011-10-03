.class public Lcom/sec/android/app/controlpanel/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkFsWritable()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/TMP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, directoryName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 189
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v5

    .line 198
    :goto_0
    return v2

    .line 194
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    const/4 v2, 0x1

    goto :goto_0

    .line 197
    :cond_1
    const-string v2, "JobManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkFsWritable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not writable."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 198
    goto :goto_0
.end method

.method public static getBootTime()J
    .locals 10

    .prologue
    .line 99
    const-string v8, "^btime\\s+(\\d+)"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 100
    .local v3, btimePattern:Ljava/util/regex/Pattern;
    const-wide/16 v0, -0x1

    .line 103
    .local v0, bootTime:J
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v8, "/proc/stat"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 105
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v9, 0x2000

    invoke-direct {v2, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 107
    .local v2, br:Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, text:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 108
    invoke-virtual {v3, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 109
    .local v6, m:Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 110
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 116
    .end local v6           #m:Ljava/util/regex/Matcher;
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v5           #file:Ljava/io/File;
    .end local v7           #text:Ljava/lang/String;
    :cond_1
    :goto_0
    move-wide v8, v0

    .line 123
    :goto_1
    return-wide v8

    .line 113
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v5       #file:Ljava/io/File;
    .restart local v6       #m:Ljava/util/regex/Matcher;
    .restart local v7       #text:Ljava/lang/String;
    :cond_2
    const-wide/16 v8, -0x1

    goto :goto_1

    .line 118
    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v5           #file:Ljava/io/File;
    .end local v6           #m:Ljava/util/regex/Matcher;
    .end local v7           #text:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 119
    .local v4, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 120
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v8

    move-object v4, v8

    .line 121
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getIntPref(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2
    .parameter "context"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 27
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 28
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getProcessStartTime(I)J
    .locals 10
    .parameter "pid"

    .prologue
    .line 132
    const-string v8, "(-?\\d+)\\s(\\S+)\\s([A-Z])\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)\\s(-?\\d+)"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 133
    .local v4, processStatPattern:Ljava/util/regex/Pattern;
    const-wide/16 v5, -0x1

    .line 135
    .local v5, startTime:J
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/proc/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/stat"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 137
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v9, 0x2000

    invoke-direct {v0, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 139
    .local v0, br:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, text:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 140
    invoke-virtual {v4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 141
    .local v3, m:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 142
    const/16 v8, 0x16

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_0

    .line 144
    :cond_0
    const-wide/16 v8, -0x1

    .line 154
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #m:Ljava/util/regex/Matcher;
    .end local v7           #text:Ljava/lang/String;
    :goto_1
    return-wide v8

    .line 147
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #file:Ljava/io/File;
    .restart local v7       #text:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #file:Ljava/io/File;
    .end local v7           #text:Ljava/lang/String;
    :cond_2
    :goto_2
    move-wide v8, v5

    .line 154
    goto :goto_1

    .line 149
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 150
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 151
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v8

    move-object v1, v8

    .line 152
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 38
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 39
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static hasStorage(Z)Z
    .locals 4
    .parameter "requireWriteAccess"

    .prologue
    const/4 v3, 0x1

    .line 164
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, state:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    if-eqz p0, :cond_0

    .line 167
    invoke-static {}, Lcom/sec/android/app/controlpanel/Utils;->checkFsWritable()Z

    move-result v1

    .local v1, writable:Z
    move v2, v1

    .line 175
    .end local v1           #writable:Z
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 170
    goto :goto_0

    .line 172
    :cond_1
    if-nez p0, :cond_2

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 173
    goto :goto_0

    .line 175
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isLocaleChange(Landroid/content/Context;)Z
    .locals 12
    .parameter "context"

    .prologue
    const/4 v10, -0x1

    const-string v11, ""

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 67
    .local v0, configuration:Landroid/content/res/Configuration;
    iget-object v8, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, locale:Ljava/lang/String;
    const-string v8, "locale"

    const-string v9, ""

    invoke-static {p0, v8, v11}, Lcom/sec/android/app/controlpanel/Utils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, previousLocale:Ljava/lang/String;
    iget v3, v0, Landroid/content/res/Configuration;->mcc:I

    .line 70
    .local v3, mcc:I
    const-string v8, "mcc"

    invoke-static {p0, v8, v10}, Lcom/sec/android/app/controlpanel/Utils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 71
    .local v6, previousMcc:I
    iget v4, v0, Landroid/content/res/Configuration;->mnc:I

    .line 72
    .local v4, mnc:I
    const-string v8, "mnc"

    invoke-static {p0, v8, v10}, Lcom/sec/android/app/controlpanel/Utils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 75
    .local v7, previousMnc:I
    const-string v8, ""

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 76
    const/4 v2, 0x1

    .line 80
    .local v2, mLocaleChanged:Z
    :goto_0
    return v2

    .line 78
    .end local v2           #mLocaleChanged:Z
    :cond_0
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-ne v3, v6, :cond_1

    if-eq v4, v7, :cond_2

    :cond_1
    const/4 v8, 0x1

    move v2, v8

    .restart local v2       #mLocaleChanged:Z
    :goto_1
    goto :goto_0

    .end local v2           #mLocaleChanged:Z
    :cond_2
    const/4 v8, 0x0

    move v2, v8

    goto :goto_1
.end method

.method public static setIntPref(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .parameter "context"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 32
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 33
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 34
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 35
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 36
    return-void
.end method

.method public static setStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 43
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 44
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 45
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 47
    return-void
.end method

.method public static writeLocaleConfig(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 84
    .local v0, configuration:Landroid/content/res/Configuration;
    iget-object v6, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, locale:Ljava/lang/String;
    iget v3, v0, Landroid/content/res/Configuration;->mcc:I

    .line 86
    .local v3, mcc:I
    iget v4, v0, Landroid/content/res/Configuration;->mnc:I

    .line 87
    .local v4, mnc:I
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 88
    .local v5, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 89
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    const-string v6, "locale"

    invoke-interface {v1, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 90
    const-string v6, "mcc"

    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 91
    const-string v6, "mnc"

    invoke-interface {v1, v6, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 93
    return-void
.end method
