.class public Lcom/android/mms/transaction/MTMessageParser;
.super Ljava/lang/Object;
.source "MTMessageParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isMTCmd(Ljava/lang/String;)Z
    .locals 7
    .parameter "message"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 128
    if-eqz p0, :cond_11

    .line 129
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 131
    .local v2, str:Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    .line 132
    .local v1, msgTockens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 133
    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_0
    aget-object v3, v1, v5

    const-string v4, "SETPL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v6

    .line 180
    .end local v0           #i:I
    .end local v1           #msgTockens:[Ljava/lang/String;
    .end local v2           #str:Ljava/util/StringTokenizer;
    :goto_1
    return v3

    .line 140
    .restart local v0       #i:I
    .restart local v1       #msgTockens:[Ljava/lang/String;
    .restart local v2       #str:Ljava/util/StringTokenizer;
    :cond_1
    aget-object v3, v1, v5

    const-string v4, "SETPLD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v6

    .line 141
    goto :goto_1

    .line 142
    :cond_2
    aget-object v3, v1, v5

    const-string v4, "SETPVL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v6

    .line 143
    goto :goto_1

    .line 144
    :cond_3
    aget-object v3, v1, v5

    const-string v4, "RESETPVL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v6

    .line 145
    goto :goto_1

    .line 146
    :cond_4
    aget-object v3, v1, v5

    const-string v4, "HIDEUSRDATA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v6

    .line 147
    goto :goto_1

    .line 148
    :cond_5
    aget-object v3, v1, v5

    const-string v4, "UNHIDEUSRDATA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v6

    .line 149
    goto :goto_1

    .line 150
    :cond_6
    aget-object v3, v1, v5

    const-string v4, "DELUSRDATA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v6

    .line 151
    goto :goto_1

    .line 152
    :cond_7
    aget-object v3, v1, v5

    const-string v4, "GETPBKA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v6

    .line 153
    goto :goto_1

    .line 154
    :cond_8
    aget-object v3, v1, v5

    const-string v4, "GETPBKG"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v6

    .line 155
    goto :goto_1

    .line 156
    :cond_9
    aget-object v3, v1, v5

    const-string v4, "GETPBKW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v6

    .line 157
    goto :goto_1

    .line 158
    :cond_a
    aget-object v3, v1, v5

    const-string v4, "GETPBK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v6

    .line 159
    goto :goto_1

    .line 161
    :cond_b
    aget-object v3, v1, v5

    const-string v4, "SETCALLFWD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move v3, v6

    .line 162
    goto/16 :goto_1

    .line 164
    :cond_c
    aget-object v3, v1, v5

    const-string v4, "DEACTCALLFWD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    move v3, v6

    .line 165
    goto/16 :goto_1

    .line 167
    :cond_d
    aget-object v3, v1, v5

    const-string v4, "SETMSGFWD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    move v3, v6

    .line 168
    goto/16 :goto_1

    .line 170
    :cond_e
    aget-object v3, v1, v5

    const-string v4, "RESETMSGFWD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    move v3, v6

    .line 171
    goto/16 :goto_1

    .line 173
    :cond_f
    aget-object v3, v1, v5

    const-string v4, "GETLOCINFO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    move v3, v6

    .line 174
    goto/16 :goto_1

    :cond_10
    move v3, v5

    .line 177
    goto/16 :goto_1

    .end local v0           #i:I
    .end local v1           #msgTockens:[Ljava/lang/String;
    .end local v2           #str:Ljava/util/StringTokenizer;
    :cond_11
    move v3, v5

    .line 180
    goto/16 :goto_1
.end method

.method private static isMTOn(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 188
    const-string v6, "status"

    .line 190
    .local v6, STATUS:Ljava/lang/String;
    const-string v0, "content://com.samsung.mobileTracker.provider.MTContentProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 192
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 195
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 197
    .local v8, status:Ljava/lang/String;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 202
    :cond_0
    if-eqz v7, :cond_1

    .line 203
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v9

    .line 211
    :goto_0
    return v0

    .line 200
    :cond_2
    :try_start_1
    const-string v0, "status"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 202
    if-eqz v7, :cond_3

    .line 203
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 206
    :cond_3
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 208
    const/4 v0, 0x1

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 203
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :cond_5
    move v0, v9

    .line 211
    goto :goto_0
.end method

.method public static messageParser(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 5
    .parameter "message"
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "Mms/MTMessageParser"

    .line 104
    if-eqz p0, :cond_2

    .line 105
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_0

    .line 106
    const-string v1, "Mms/MTMessageParser"

    const-string v2, "Mobile Tracker message - received 0x1b"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 121
    :goto_0
    return v1

    .line 108
    :cond_0
    invoke-static {p1}, Lcom/android/mms/transaction/MTMessageParser;->isMTOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/android/mms/transaction/MTMessageParser;->isMTCmd(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    const-string v1, "Mms/MTMessageParser"

    const-string v2, "Mobile Tracker message - received manual command"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 111
    goto :goto_0

    .line 114
    :cond_1
    const-string v1, "Mms/MTMessageParser"

    const-string v2, "Mobile Tracker - Normal msg received"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 115
    goto :goto_0

    :cond_2
    move v1, v3

    .line 118
    goto :goto_0

    .line 120
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    move v1, v3

    .line 121
    goto :goto_0
.end method
