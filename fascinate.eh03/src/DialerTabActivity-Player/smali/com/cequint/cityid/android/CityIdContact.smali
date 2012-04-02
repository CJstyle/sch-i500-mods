.class public Lcom/cequint/cityid/android/CityIdContact;
.super Ljava/lang/Object;
.source "CityIdContact.java"


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;


# instance fields
.field public m_isNanp:Z

.field public m_strCityName:Ljava/lang/String;

.field public m_strCountryName:Ljava/lang/String;

.field public m_strDisplayName:Ljava/lang/String;

.field public m_strStateAbrv:Ljava/lang/String;

.field public m_strStateName:Ljava/lang/String;

.field public m_wDisplayComputed:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "content://com.cequint.cityid/lookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/cequint/cityid/android/CityIdContact;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v1, p0, Lcom/cequint/cityid/android/CityIdContact;->m_isNanp:Z

    .line 45
    iput-object v0, p0, Lcom/cequint/cityid/android/CityIdContact;->m_strCityName:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/cequint/cityid/android/CityIdContact;->m_strStateName:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/cequint/cityid/android/CityIdContact;->m_strStateAbrv:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/cequint/cityid/android/CityIdContact;->m_strCountryName:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/cequint/cityid/android/CityIdContact;->m_strDisplayName:Ljava/lang/String;

    .line 50
    iput v1, p0, Lcom/cequint/cityid/android/CityIdContact;->m_wDisplayComputed:I

    return-void
.end method

.method public static doLookup(Landroid/content/Context;Ljava/lang/String;Z)Lcom/cequint/cityid/android/CityIdContact;
    .locals 4
    .parameter "context"
    .parameter "number"
    .parameter "isSystemProvided"

    .prologue
    .line 59
    new-instance v0, Lcom/cequint/cityid/android/CityIdContact;

    invoke-direct {v0}, Lcom/cequint/cityid/android/CityIdContact;-><init>()V

    .line 60
    .local v0, cidContact:Lcom/cequint/cityid/android/CityIdContact;
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    invoke-virtual {v0, p0, p1, p2}, Lcom/cequint/cityid/android/CityIdContact;->implLookup(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    .line 65
    :goto_0
    return-object v0

    .line 63
    :cond_0
    const-string v1, "CityIdContact"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doLookup Invalid Args: ctx: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public implLookup(Landroid/content/Context;Ljava/lang/CharSequence;Z)V
    .locals 11
    .parameter "context"
    .parameter "strNumber"
    .parameter "isSystemProvided"

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v7, "CityIdContact"

    .line 120
    const-string v1, "CityIdContact"

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

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 127
    .local v0, cr:Landroid/content/ContentResolver;
    new-array v4, v10, [Ljava/lang/String;

    const-string v1, "NANP"

    aput-object v1, v4, v8

    if-eqz p3, :cond_1

    const-string v1, "system"

    :goto_0
    aput-object v1, v4, v9

    .line 128
    .local v4, flags:[Ljava/lang/String;
    sget-object v1, Lcom/cequint/cityid/android/CityIdContact;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 130
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 132
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cequint/cityid/android/CityIdContact;->m_strCityName:Ljava/lang/String;

    .line 133
    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cequint/cityid/android/CityIdContact;->m_strStateName:Ljava/lang/String;

    .line 134
    const/4 v1, 0x4

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cequint/cityid/android/CityIdContact;->m_strStateAbrv:Ljava/lang/String;

    .line 135
    const/4 v1, 0x5

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cequint/cityid/android/CityIdContact;->m_strCountryName:Ljava/lang/String;

    .line 136
    const-string v1, "CityIdContact"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "City   : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cequint/cityid/android/CityIdContact;->m_strCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v1, "CityIdContact"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cequint/cityid/android/CityIdContact;->m_strStateName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v1, "CityIdContact"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ST     : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cequint/cityid/android/CityIdContact;->m_strStateAbrv:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v1, "CityIdContact"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Country: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cequint/cityid/android/CityIdContact;->m_strCountryName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v1, 0x6

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v9

    :goto_1
    iput-boolean v1, p0, Lcom/cequint/cityid/android/CityIdContact;->m_isNanp:Z

    .line 147
    :goto_2
    if-eqz v6, :cond_0

    .line 149
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 152
    :cond_0
    return-void

    .line 127
    .end local v4           #flags:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    const-string v1, "user"

    goto/16 :goto_0

    .restart local v4       #flags:[Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_2
    move v1, v8

    .line 140
    goto :goto_1

    .line 144
    :cond_3
    const-string v1, "CityIdContact"

    const-string v1, "No CityID found"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
