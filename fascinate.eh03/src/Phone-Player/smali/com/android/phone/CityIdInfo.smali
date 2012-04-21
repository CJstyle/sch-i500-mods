.class public Lcom/android/phone/CityIdInfo;
.super Ljava/lang/Object;
.source "CityIdInfo.java"


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;


# instance fields
.field public m_hasLookupBeenPerformed:Z

.field public m_isCityIdCurrentlyDisplayed:Z

.field public m_isDisplayOneLine:Z

.field public m_isNanp:Z

.field public m_strCityName:Ljava/lang/String;

.field public m_strCountryName:Ljava/lang/String;

.field public m_strDisplayName:Ljava/lang/String;

.field public m_strStateAbrv:Ljava/lang/String;

.field public m_strStateName:Ljava/lang/String;

.field public m_tvOneLineDisplay:Landroid/widget/TextView;

.field public m_wDisplayComputed:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "content://com.cequint.cityid/lookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CityIdInfo;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v1, p0, Lcom/android/phone/CityIdInfo;->m_isNanp:Z

    .line 50
    iput-boolean v1, p0, Lcom/android/phone/CityIdInfo;->m_hasLookupBeenPerformed:Z

    .line 51
    iput-object v2, p0, Lcom/android/phone/CityIdInfo;->m_strCityName:Ljava/lang/String;

    .line 52
    iput-object v2, p0, Lcom/android/phone/CityIdInfo;->m_strStateName:Ljava/lang/String;

    .line 53
    iput-object v2, p0, Lcom/android/phone/CityIdInfo;->m_strStateAbrv:Ljava/lang/String;

    .line 54
    iput-object v2, p0, Lcom/android/phone/CityIdInfo;->m_strCountryName:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/CityIdInfo;->m_strDisplayName:Ljava/lang/String;

    .line 56
    iput v1, p0, Lcom/android/phone/CityIdInfo;->m_wDisplayComputed:I

    .line 58
    iput-boolean v1, p0, Lcom/android/phone/CityIdInfo;->m_isDisplayOneLine:Z

    .line 59
    iput-boolean v1, p0, Lcom/android/phone/CityIdInfo;->m_isCityIdCurrentlyDisplayed:Z

    .line 60
    iput-object v2, p0, Lcom/android/phone/CityIdInfo;->m_tvOneLineDisplay:Landroid/widget/TextView;

    .line 62
    return-void
.end method

.method public static doLookup(Landroid/content/Context;Ljava/lang/Object;Z)Lcom/android/phone/CityIdInfo;
    .locals 5
    .parameter "context"
    .parameter "o"
    .parameter "isSystemProvided"

    .prologue
    const-string v4, "com.cequint.cityidinfo"

    .line 134
    const/4 v2, 0x0

    .line 135
    .local v2, info:Lcom/android/internal/telephony/CallerInfo;
    instance-of v3, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v3, :cond_2

    .line 136
    check-cast p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local p1
    iget-object v2, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 140
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_1

    if-nez p0, :cond_3

    .line 141
    :cond_1
    const/4 v3, 0x0

    .line 150
    :goto_1
    return-object v3

    .line 137
    .restart local p1
    :cond_2
    instance-of v3, p1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v3, :cond_0

    .line 138
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v2, v0

    goto :goto_0

    .line 143
    .end local p1
    :cond_3
    const-string v3, "com.cequint.cityidinfo"

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/CallerInfo;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CityIdInfo;

    .line 144
    .local v1, cidInfo:Lcom/android/phone/CityIdInfo;
    if-nez v1, :cond_4

    .line 146
    new-instance v1, Lcom/android/phone/CityIdInfo;

    .end local v1           #cidInfo:Lcom/android/phone/CityIdInfo;
    invoke-direct {v1}, Lcom/android/phone/CityIdInfo;-><init>()V

    .line 147
    .restart local v1       #cidInfo:Lcom/android/phone/CityIdInfo;
    const-string v3, "com.cequint.cityidinfo"

    invoke-virtual {v2, v4, v1}, Lcom/android/internal/telephony/CallerInfo;->addUserData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, p0, v3, p2}, Lcom/android/phone/CityIdInfo;->doLookup(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    :cond_4
    move-object v3, v1

    .line 150
    goto :goto_1
.end method

.method public static getCityIdInfo(Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/CityIdInfo;
    .locals 2
    .parameter "info"

    .prologue
    .line 204
    if-eqz p0, :cond_0

    .line 206
    const-string v1, "com.cequint.cityidinfo"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/CallerInfo;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 207
    .local v0, o:Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/phone/CityIdInfo;

    if-eqz v1, :cond_0

    .line 208
    check-cast v0, Lcom/android/phone/CityIdInfo;

    .end local v0           #o:Ljava/lang/Object;
    move-object v1, v0

    .line 210
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setCityIdDisplayCutCityName(Lcom/android/phone/TextViewDT;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 6
    .parameter "tv"
    .parameter "info"

    .prologue
    const/4 v4, 0x0

    const-string v5, "CityIdInfo"

    .line 316
    const/16 v1, 0x8

    .line 317
    .local v1, nDisplayCityId:I
    invoke-static {p1}, Lcom/android/phone/CityIdInfo;->getCityIdInfo(Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/CityIdInfo;

    move-result-object v0

    .line 318
    .local v0, cidInfo:Lcom/android/phone/CityIdInfo;
    if-nez p0, :cond_0

    .line 319
    const-string v3, "CityIdInfo"

    const-string v3, "setCityIdDisplayCutCityName  tv null"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :goto_0
    return-void

    .line 321
    :cond_0
    if-nez p1, :cond_1

    .line 322
    const-string v3, "CityIdInfo"

    const-string v3, "setCityIdDisplayCutCityName  info null"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 325
    :cond_1
    if-eqz v0, :cond_2

    .line 328
    iput-boolean v4, v0, Lcom/android/phone/CityIdInfo;->m_isDisplayOneLine:Z

    .line 329
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/phone/CityIdInfo;->m_tvOneLineDisplay:Landroid/widget/TextView;

    .line 330
    iput-boolean v4, v0, Lcom/android/phone/CityIdInfo;->m_isCityIdCurrentlyDisplayed:Z

    .line 332
    iget-boolean v3, v0, Lcom/android/phone/CityIdInfo;->m_hasLookupBeenPerformed:Z

    if-eqz v3, :cond_2

    .line 334
    invoke-virtual {p0}, Lcom/android/phone/TextViewDT;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/TextViewDT;->getWidth()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/phone/CityIdInfo;->computeDisplayName(Landroid/graphics/Paint;I)Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, strDisplay:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 338
    invoke-virtual {p0, v2}, Lcom/android/phone/TextViewDT;->setFullText(Ljava/lang/CharSequence;)V

    .line 340
    const/4 v1, 0x0

    .line 344
    .end local v2           #strDisplay:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/phone/TextViewDT;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public computeDisplayName(Landroid/graphics/Paint;I)Ljava/lang/String;
    .locals 2
    .parameter "pFont"
    .parameter "wAvailable"

    .prologue
    const/4 v1, 0x0

    .line 160
    iget-boolean v0, p0, Lcom/android/phone/CityIdInfo;->m_hasLookupBeenPerformed:Z

    if-eqz v0, :cond_4

    .line 163
    iget v0, p0, Lcom/android/phone/CityIdInfo;->m_wDisplayComputed:I

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/phone/CityIdInfo;->m_strDisplayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/phone/CityIdInfo;->m_strDisplayName:Ljava/lang/String;

    .line 194
    :goto_0
    return-object v0

    .line 166
    :cond_0
    iput-object v1, p0, Lcom/android/phone/CityIdInfo;->m_strDisplayName:Ljava/lang/String;

    .line 167
    iput p2, p0, Lcom/android/phone/CityIdInfo;->m_wDisplayComputed:I

    .line 170
    iget-boolean v0, p0, Lcom/android/phone/CityIdInfo;->m_isNanp:Z

    if-eqz v0, :cond_3

    .line 172
    iget-object v0, p0, Lcom/android/phone/CityIdInfo;->m_strCityName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/android/phone/CityIdInfo;->m_strStateName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/CityIdInfo;->m_strDisplayName:Ljava/lang/String;

    .line 191
    :goto_1
    iget-object v0, p0, Lcom/android/phone/CityIdInfo;->m_strDisplayName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 192
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/CityIdInfo;->m_strDisplayName:Ljava/lang/String;

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CityIdInfo;->m_strDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 178
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/CityIdInfo;->m_strCityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CityIdInfo;->m_strStateAbrv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CityIdInfo;->m_strDisplayName:Ljava/lang/String;

    goto :goto_1

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CityIdInfo;->m_strCountryName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/CityIdInfo;->m_strDisplayName:Ljava/lang/String;

    goto :goto_1

    .line 188
    :cond_4
    iput-object v1, p0, Lcom/android/phone/CityIdInfo;->m_strDisplayName:Ljava/lang/String;

    goto :goto_1
.end method

.method public doLookup(Landroid/content/Context;Ljava/lang/CharSequence;Z)V
    .locals 11
    .parameter "context"
    .parameter "strNumber"
    .parameter "isSystemProvided"

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v7, "CityIdInfo"

    .line 253
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    const-string v1, "CityIdInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lookup "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 264
    .local v0, cr:Landroid/content/ContentResolver;
    new-array v4, v10, [Ljava/lang/String;

    .line 265
    .local v4, flags:[Ljava/lang/String;
    const-string v1, "NANP"

    aput-object v1, v4, v9

    .line 266
    if-eqz p3, :cond_2

    const-string v1, "system"

    :goto_1
    aput-object v1, v4, v8

    .line 268
    sget-object v1, Lcom/android/phone/CityIdInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 270
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 272
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CityIdInfo;->m_strCityName:Ljava/lang/String;

    .line 273
    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CityIdInfo;->m_strStateName:Ljava/lang/String;

    .line 274
    const/4 v1, 0x4

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CityIdInfo;->m_strStateAbrv:Ljava/lang/String;

    .line 275
    const/4 v1, 0x5

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CityIdInfo;->m_strCountryName:Ljava/lang/String;

    .line 276
    const-string v1, "CityIdInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "City   : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CityIdInfo;->m_strCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string v1, "CityIdInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CityIdInfo;->m_strStateName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string v1, "CityIdInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ST     : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CityIdInfo;->m_strStateAbrv:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v1, "CityIdInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Country: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CityIdInfo;->m_strCountryName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v1, 0x6

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v8

    :goto_2
    iput-boolean v1, p0, Lcom/android/phone/CityIdInfo;->m_isNanp:Z

    .line 286
    :goto_3
    iput-boolean v8, p0, Lcom/android/phone/CityIdInfo;->m_hasLookupBeenPerformed:Z

    goto/16 :goto_0

    .line 266
    .end local v6           #c:Landroid/database/Cursor;
    :cond_2
    const-string v1, "user"

    goto/16 :goto_1

    .restart local v6       #c:Landroid/database/Cursor;
    :cond_3
    move v1, v9

    .line 280
    goto :goto_2

    .line 284
    :cond_4
    const-string v1, "CityIdInfo"

    const-string v1, "No CityID found"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
