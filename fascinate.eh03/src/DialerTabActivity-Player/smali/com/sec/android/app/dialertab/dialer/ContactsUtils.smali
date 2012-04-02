.class public Lcom/sec/android/app/dialertab/dialer/ContactsUtils;
.super Ljava/lang/Object;
.source "ContactsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/dialer/ContactsUtils$ProviderNames;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    return-void
.end method

.method public static final getDisplayLabel(Landroid/content/Context;Ljava/lang/String;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9
    .parameter "context"
    .parameter "mimetype"
    .parameter "type"
    .parameter "label"

    .prologue
    const/4 v8, 0x1

    .line 86
    const-string v3, ""

    .line 91
    .local v3, display:Ljava/lang/CharSequence;
    const-string v7, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 92
    const/4 v2, 0x1

    .line 93
    .local v2, defaultType:I
    const/4 v1, 0x0

    .line 94
    .local v1, customType:I
    const v0, 0x1070003

    .line 112
    .local v0, arrayResId:I
    :goto_0
    if-eqz p2, :cond_5

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    .line 115
    .local v6, labels:[Ljava/lang/CharSequence;
    sub-int v7, p2, v8

    :try_start_0
    aget-object v3, v6, v7
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #labels:[Ljava/lang/CharSequence;
    :cond_0
    :goto_1
    move-object v4, v3

    .line 124
    .end local v0           #arrayResId:I
    .end local v1           #customType:I
    .end local v2           #defaultType:I
    .end local v3           #display:Ljava/lang/CharSequence;
    .local v4, display:Ljava/lang/Object;
    :goto_2
    return-object v4

    .line 95
    .end local v4           #display:Ljava/lang/Object;
    .restart local v3       #display:Ljava/lang/CharSequence;
    :cond_1
    const-string v7, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 96
    const/4 v2, 0x1

    .line 97
    .restart local v2       #defaultType:I
    const/4 v1, 0x0

    .line 98
    .restart local v1       #customType:I
    const/high16 v0, 0x107

    .restart local v0       #arrayResId:I
    goto :goto_0

    .line 99
    .end local v0           #arrayResId:I
    .end local v1           #customType:I
    .end local v2           #defaultType:I
    :cond_2
    const-string v7, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 100
    const/4 v2, 0x1

    .line 101
    .restart local v2       #defaultType:I
    const/4 v1, 0x0

    .line 102
    .restart local v1       #customType:I
    const v0, 0x1070004

    .restart local v0       #arrayResId:I
    goto :goto_0

    .line 103
    .end local v0           #arrayResId:I
    .end local v1           #customType:I
    .end local v2           #defaultType:I
    :cond_3
    const-string v7, "vnd.android.cursor.item/organization"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 104
    const/4 v2, 0x1

    .line 105
    .restart local v2       #defaultType:I
    const/4 v1, 0x0

    .line 106
    .restart local v1       #customType:I
    const v0, 0x1070002

    .restart local v0       #arrayResId:I
    goto :goto_0

    .end local v0           #arrayResId:I
    .end local v1           #customType:I
    .end local v2           #defaultType:I
    :cond_4
    move-object v4, v3

    .line 109
    .restart local v4       #display:Ljava/lang/Object;
    goto :goto_2

    .line 116
    .end local v4           #display:Ljava/lang/Object;
    .restart local v0       #arrayResId:I
    .restart local v1       #customType:I
    .restart local v2       #defaultType:I
    .restart local v6       #labels:[Ljava/lang/CharSequence;
    :catch_0
    move-exception v5

    .line 117
    .local v5, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    sub-int v7, v2, v8

    aget-object v3, v6, v7

    goto :goto_1

    .line 120
    .end local v5           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v6           #labels:[Ljava/lang/CharSequence;
    :cond_5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 121
    move-object v3, p3

    goto :goto_1
.end method

.method public static final getDisplayLabel(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "context"
    .parameter "mimeType"
    .parameter "cursor"

    .prologue
    const-string v6, "data3"

    const-string v5, "data2"

    .line 59
    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "vnd.android.cursor.item/sms-address"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    :cond_0
    const-string p1, "vnd.android.cursor.item/phone_v2"

    .line 63
    const-string v4, "data2"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 64
    .local v1, colType:I
    const-string v4, "data3"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 78
    .local v0, colLabel:I
    :goto_0
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 79
    .local v3, type:I
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, label:Ljava/lang/CharSequence;
    invoke-static {p0, p1, v3, v2}, Lcom/sec/android/app/dialertab/dialer/ContactsUtils;->getDisplayLabel(Landroid/content/Context;Ljava/lang/String;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v0           #colLabel:I
    .end local v1           #colType:I
    .end local v2           #label:Ljava/lang/CharSequence;
    .end local v3           #type:I
    :goto_1
    return-object v4

    .line 65
    :cond_1
    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 66
    const-string v4, "data2"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 67
    .restart local v1       #colType:I
    const-string v4, "data3"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .restart local v0       #colLabel:I
    goto :goto_0

    .line 68
    .end local v0           #colLabel:I
    .end local v1           #colType:I
    :cond_2
    const-string v4, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 69
    const-string v4, "data2"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 70
    .restart local v1       #colType:I
    const-string v4, "data3"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .restart local v0       #colLabel:I
    goto :goto_0

    .line 71
    .end local v0           #colLabel:I
    .end local v1           #colType:I
    :cond_3
    const-string v4, "vnd.android.cursor.item/organization"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 72
    const-string v4, "data2"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 73
    .restart local v1       #colType:I
    const-string v4, "data3"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .restart local v0       #colLabel:I
    goto :goto_0

    .line 75
    .end local v0           #colLabel:I
    .end local v1           #colType:I
    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static getPhotoPickIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    const/16 v4, 0x60

    const/4 v3, 0x1

    .line 284
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 285
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 288
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 289
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 292
    return-object v0
.end method

.method public static initiateCall(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "context"
    .parameter "phoneNumber"

    .prologue
    .line 380
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 382
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 383
    return-void
.end method

.method public static initiateSms(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "context"
    .parameter "phoneNumber"

    .prologue
    .line 389
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "sms"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 391
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 392
    return-void
.end method

.method public static isGraphic(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 399
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadContactPhoto(Landroid/content/Context;JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"
    .parameter "photoId"
    .parameter "options"

    .prologue
    .line 165
    const/4 v7, 0x0

    .line 166
    .local v7, photoCursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 169
    .local v6, photoBm:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data15"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 174
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 176
    .local v8, photoData:[B
    const/4 v0, 0x0

    array-length v1, v8

    invoke-static {v8, v0, v1, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 180
    .end local v8           #photoData:[B
    :cond_0
    if-eqz v7, :cond_1

    .line 181
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 185
    :cond_1
    return-object v6

    .line 180
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 181
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static loadContactPhoto(Landroid/database/Cursor;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "cursor"
    .parameter "bitmapColumnIndex"
    .parameter "options"

    .prologue
    .line 138
    if-nez p0, :cond_0

    .line 139
    const/4 v1, 0x0

    .line 143
    :goto_0
    return-object v1

    .line 142
    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 143
    .local v0, data:[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static loadPlaceholderPhoto(ILandroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "placeholderImageResource"
    .parameter "context"
    .parameter "options"

    .prologue
    .line 156
    if-nez p0, :cond_0

    .line 157
    const/4 v0, 0x0

    .line 159
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static lookupProviderNameFromId(I)Ljava/lang/String;
    .locals 1
    .parameter "protocol"

    .prologue
    .line 219
    packed-switch p0, :pswitch_data_0

    .line 237
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 221
    :pswitch_0
    const-string v0, "GTalk"

    goto :goto_0

    .line 223
    :pswitch_1
    const-string v0, "AIM"

    goto :goto_0

    .line 225
    :pswitch_2
    const-string v0, "MSN"

    goto :goto_0

    .line 227
    :pswitch_3
    const-string v0, "Yahoo"

    goto :goto_0

    .line 229
    :pswitch_4
    const-string v0, "ICQ"

    goto :goto_0

    .line 231
    :pswitch_5
    const-string v0, "JABBER"

    goto :goto_0

    .line 233
    :pswitch_6
    const-string v0, "SKYPE"

    goto :goto_0

    .line 235
    :pswitch_7
    const-string v0, "QQ"

    goto :goto_0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static queryForAllRawContactIds(Landroid/content/ContentResolver;J)Ljava/util/ArrayList;
    .locals 8
    .parameter "cr"
    .parameter "contactId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    const/4 v6, 0x0

    .line 358
    .local v6, rawContactIdCursor:Landroid/database/Cursor;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .local v7, rawContactIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 363
    if-eqz v6, :cond_1

    .line 364
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 369
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 370
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 369
    :cond_1
    if-eqz v6, :cond_2

    .line 370
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 373
    :cond_2
    return-object v7
.end method

.method public static queryForContactId(Landroid/content/ContentResolver;J)J
    .locals 9
    .parameter "cr"
    .parameter "rawContactId"

    .prologue
    .line 296
    const/4 v8, 0x0

    .line 297
    .local v8, contactIdCursor:Landroid/database/Cursor;
    const-wide/16 v6, -0x1

    .line 299
    .local v6, contactId:J
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "contact_id"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 302
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    .line 306
    :cond_0
    if-eqz v8, :cond_1

    .line 307
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 310
    :cond_1
    return-wide v6

    .line 306
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 307
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static queryForRawContactId(Landroid/content/ContentResolver;J)J
    .locals 9
    .parameter "cr"
    .parameter "contactId"

    .prologue
    .line 338
    const/4 v8, 0x0

    .line 339
    .local v8, rawContactIdCursor:Landroid/database/Cursor;
    const-wide/16 v6, -0x1

    .line 341
    .local v6, rawContactId:J
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 344
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    .line 349
    :cond_0
    if-eqz v8, :cond_1

    .line 350
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 353
    :cond_1
    return-wide v6

    .line 349
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 350
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static querySuperPrimaryPhone(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 9
    .parameter "cr"
    .parameter "contactId"

    .prologue
    .line 314
    const/4 v7, 0x0

    .line 315
    .local v7, c:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 317
    .local v8, phone:Ljava/lang/String;
    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 318
    .local v6, baseUri:Landroid/net/Uri;
    const-string v0, "data"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 320
    .local v1, dataUri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "data1"

    aput-object v3, v2, v0

    const-string v3, "mimetype=mimetype AND is_super_primary=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 325
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 330
    :cond_0
    if-eqz v7, :cond_1

    .line 331
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 334
    :cond_1
    return-object v8

    .line 330
    .end local v1           #dataUri:Landroid/net/Uri;
    .end local v6           #baseUri:Landroid/net/Uri;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 331
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method
