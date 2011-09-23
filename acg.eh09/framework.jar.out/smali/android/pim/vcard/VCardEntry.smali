.class public Landroid/pim/vcard/VCardEntry;
.super Ljava/lang/Object;
.source "VCardEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/pim/vcard/VCardEntry$Property;,
        Landroid/pim/vcard/VCardEntry$PhotoData;,
        Landroid/pim/vcard/VCardEntry$ImData;,
        Landroid/pim/vcard/VCardEntry$OrganizationData;,
        Landroid/pim/vcard/VCardEntry$PostalData;,
        Landroid/pim/vcard/VCardEntry$EmailData;,
        Landroid/pim/vcard/VCardEntry$PhoneData;
    }
.end annotation


# static fields
.field private static final ACCOUNT_TYPE_GOOGLE:Ljava/lang/String; = "com.google"

.field private static final DEFAULT_ORGANIZATION_TYPE:I = 0x1

.field private static final GOOGLE_MY_CONTACTS_GROUP:Ljava/lang/String; = "System Group: My Contacts"

.field private static final LOG_TAG:Ljava/lang/String; = "VCardEntry"

.field private static final sEmptyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sImMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private mAndroidCustomPropertyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAnniversary:Ljava/lang/String;

.field private mBirthday:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private mEmailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$EmailData;",
            ">;"
        }
    .end annotation
.end field

.field private mFamilyName:Ljava/lang/String;

.field private mFormattedName:Ljava/lang/String;

.field private mGivenName:Ljava/lang/String;

.field private mImList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$ImData;",
            ">;"
        }
    .end annotation
.end field

.field private mMiddleName:Ljava/lang/String;

.field private mNickNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNoteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOrganizationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$OrganizationData;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$PhoneData;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneticFamilyName:Ljava/lang/String;

.field private mPhoneticFullName:Ljava/lang/String;

.field private mPhoneticGivenName:Ljava/lang/String;

.field private mPhoneticMiddleName:Ljava/lang/String;

.field private mPhotoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$PhotoData;",
            ">;"
        }
    .end annotation
.end field

.field private mPostalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$PostalData;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefix:Ljava/lang/String;

.field private mSuffix:Ljava/lang/String;

.field private final mVCardType:I

.field private mWebsiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    .line 70
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-AIM"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-MSN"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-YAHOO"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-ICQ"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-JABBER"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-SKYPE-USERNAME"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-QQ"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-GOOGLE-TALK"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-NETMEETING"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-GOOGLE TALK"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/pim/vcard/VCardEntry;->sEmptyList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 530
    const/high16 v0, -0x4000

    invoke-direct {p0, v0}, Landroid/pim/vcard/VCardEntry;-><init>(I)V

    .line 531
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "vcardType"

    .prologue
    .line 534
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/pim/vcard/VCardEntry;-><init>(ILandroid/accounts/Account;)V

    .line 535
    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;)V
    .locals 0
    .parameter "vcardType"
    .parameter "account"

    .prologue
    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    iput p1, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    .line 539
    iput-object p2, p0, Landroid/pim/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    .line 540
    return-void
.end method

.method private addEmail(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "type"
    .parameter "data"
    .parameter "label"
    .parameter "isPrimary"

    .prologue
    .line 578
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 579
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    .line 581
    :cond_0
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    new-instance v1, Landroid/pim/vcard/VCardEntry$EmailData;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/pim/vcard/VCardEntry$EmailData;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    return-void
.end method

.method private addIm(ILjava/lang/String;ILjava/lang/String;Z)V
    .locals 7
    .parameter "protocol"
    .parameter "customProtocol"
    .parameter "type"
    .parameter "propValue"
    .parameter "isPrimary"

    .prologue
    .line 817
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mImList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 818
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mImList:Ljava/util/List;

    .line 820
    :cond_0
    iget-object v6, p0, Landroid/pim/vcard/VCardEntry;->mImList:Ljava/util/List;

    new-instance v0, Landroid/pim/vcard/VCardEntry$ImData;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/pim/vcard/VCardEntry$ImData;-><init>(ILjava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 821
    return-void
.end method

.method private addNewOrganization(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11
    .parameter "type"
    .parameter "companyName"
    .parameter "departmentName"
    .parameter "titleName"
    .parameter "jobDescription"
    .parameter "symbol"
    .parameter "phoneticName"
    .parameter "officeLocation"
    .parameter "isPrimary"

    .prologue
    .line 614
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 615
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    .line 617
    :cond_0
    iget-object v10, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    new-instance v0, Landroid/pim/vcard/VCardEntry$OrganizationData;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroid/pim/vcard/VCardEntry$OrganizationData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    return-void
.end method

.method private addNewOrganization(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .parameter "type"
    .parameter "companyName"
    .parameter "departmentName"
    .parameter "titleName"
    .parameter "phoneticName"
    .parameter "isPrimary"

    .prologue
    .line 600
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 601
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    .line 603
    :cond_0
    iget-object v7, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    new-instance v0, Landroid/pim/vcard/VCardEntry$OrganizationData;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/pim/vcard/VCardEntry$OrganizationData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    return-void
.end method

.method private addNickName(Ljava/lang/String;)V
    .locals 1
    .parameter "nickName"

    .prologue
    .line 571
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 572
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    .line 574
    :cond_0
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    return-void
.end method

.method private addNote(Ljava/lang/String;)V
    .locals 2
    .parameter "note"

    .prologue
    .line 824
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 825
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    .line 827
    :cond_0
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 828
    return-void
.end method

.method private addPhone(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .parameter "type"
    .parameter "data"
    .parameter "label"
    .parameter "isPrimary"

    .prologue
    .line 543
    iget-object v7, p0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    if-nez v7, :cond_0

    .line 544
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    .line 546
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 547
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 549
    .local v6, trimed:Ljava/lang/String;
    const/4 v7, 0x6

    if-eq p1, v7, :cond_1

    iget v7, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    invoke-static {v7}, Landroid/pim/vcard/VCardConfig;->refrainPhoneNumberFormatting(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 550
    :cond_1
    move-object v2, v6

    .line 566
    .local v2, formattedNumber:Ljava/lang/String;
    :goto_0
    new-instance v5, Landroid/pim/vcard/VCardEntry$PhoneData;

    invoke-direct {v5, p1, v2, p3, p4}, Landroid/pim/vcard/VCardEntry$PhoneData;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 567
    .local v5, phoneData:Landroid/pim/vcard/VCardEntry$PhoneData;
    iget-object v7, p0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    return-void

    .line 552
    .end local v2           #formattedNumber:Ljava/lang/String;
    .end local v5           #phoneData:Landroid/pim/vcard/VCardEntry$PhoneData;
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    .line 553
    .local v4, length:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 554
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 557
    .local v1, ch:C
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 553
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 564
    .end local v1           #ch:C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #formattedNumber:Ljava/lang/String;
    goto :goto_0
.end method

.method private addPhotoBytes(Ljava/lang/String;[BZ)V
    .locals 3
    .parameter "formatName"
    .parameter "photoBytes"
    .parameter "isPrimary"

    .prologue
    .line 831
    iget-object v1, p0, Landroid/pim/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 832
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/pim/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    .line 834
    :cond_0
    new-instance v0, Landroid/pim/vcard/VCardEntry$PhotoData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p2, p3}, Landroid/pim/vcard/VCardEntry$PhotoData;-><init>(ILjava/lang/String;[BZ)V

    .line 835
    .local v0, photoData:Landroid/pim/vcard/VCardEntry$PhotoData;
    iget-object v1, p0, Landroid/pim/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 836
    return-void
.end method

.method private addPostal(ILjava/util/List;Ljava/lang/String;Z)V
    .locals 2
    .parameter "type"
    .parameter
    .parameter "label"
    .parameter "isPrimary"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 585
    .local p2, propValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 586
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    .line 588
    :cond_0
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    new-instance v1, Landroid/pim/vcard/VCardEntry$PostalData;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/pim/vcard/VCardEntry$PostalData;-><init>(ILjava/util/List;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    return-void
.end method

.method public static buildFromResolver(Landroid/content/ContentResolver;)Landroid/pim/vcard/VCardEntry;
    .locals 1
    .parameter "resolver"

    .prologue
    .line 1558
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Landroid/pim/vcard/VCardEntry;->buildFromResolver(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/pim/vcard/VCardEntry;

    move-result-object v0

    return-object v0
.end method

.method public static buildFromResolver(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/pim/vcard/VCardEntry;
    .locals 1
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 1563
    const/4 v0, 0x0

    return-object v0
.end method

.method private buildSinglePhoneticNameFromSortAsParam(Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 625
    .local p1, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    const-string v5, "SORT-AS"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 626
    .local v3, sortAsCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    if-eqz v5, :cond_2

    .line 627
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 628
    const-string v5, "VCardEntry"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incorrect multiple SORT_AS parameters detected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_0
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget v6, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    invoke-static {v5, v6}, Landroid/pim/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 634
    .local v4, sortNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 635
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 636
    .local v1, elem:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 638
    .end local v1           #elem:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 640
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #sortNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return-object v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private constructDisplayName()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1245
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1246
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    .line 1264
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1265
    const-string v0, ""

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    .line 1267
    :cond_1
    return-void

    .line 1247
    :cond_2
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mFamilyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mGivenName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1248
    :cond_3
    iget v0, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    iget-object v1, p0, Landroid/pim/vcard/VCardEntry;->mFamilyName:Ljava/lang/String;

    iget-object v2, p0, Landroid/pim/vcard/VCardEntry;->mMiddleName:Ljava/lang/String;

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry;->mGivenName:Ljava/lang/String;

    iget-object v4, p0, Landroid/pim/vcard/VCardEntry;->mPrefix:Ljava/lang/String;

    iget-object v5, p0, Landroid/pim/vcard/VCardEntry;->mSuffix:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Landroid/pim/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 1250
    :cond_4
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1252
    :cond_5
    iget v0, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    iget-object v1, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    iget-object v2, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Landroid/pim/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 1254
    :cond_6
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 1255
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardEntry$EmailData;

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$EmailData;->data:Ljava/lang/String;

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 1256
    :cond_7
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 1257
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardEntry$PhoneData;

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$PhoneData;->data:Ljava/lang/String;

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 1258
    :cond_8
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 1259
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardEntry$PostalData;

    iget v1, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardEntry$PostalData;->getFormattedAddress(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1260
    :cond_9
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1261
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardEntry$OrganizationData;

    invoke-virtual {v0}, Landroid/pim/vcard/VCardEntry$OrganizationData;->getFormattedString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private handleAndroidCustomProperty(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1234
    .local p1, customPropertyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mAndroidCustomPropertyList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mAndroidCustomPropertyList:Ljava/util/List;

    .line 1237
    :cond_0
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mAndroidCustomPropertyList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1238
    return-void
.end method

.method private handleNProperty(Ljava/util/List;Ljava/util/Map;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, paramValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    const/4 v2, 0x1

    .line 881
    invoke-direct {p0, p2}, Landroid/pim/vcard/VCardEntry;->tryHandleSortAsName(Ljava/util/Map;)V

    .line 885
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, size:I
    if-ge v0, v2, :cond_1

    .line 900
    .end local v0           #size:I
    :cond_0
    :goto_0
    return-void

    .line 888
    .restart local v0       #size:I
    :cond_1
    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    .line 889
    const/4 v0, 0x5

    .line 892
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 898
    :goto_1
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/pim/vcard/VCardEntry;->mFamilyName:Ljava/lang/String;

    goto :goto_0

    .line 894
    :pswitch_0
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/pim/vcard/VCardEntry;->mSuffix:Ljava/lang/String;

    .line 895
    :pswitch_1
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/pim/vcard/VCardEntry;->mPrefix:Ljava/lang/String;

    .line 896
    :pswitch_2
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/pim/vcard/VCardEntry;->mMiddleName:Ljava/lang/String;

    .line 897
    :pswitch_3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/pim/vcard/VCardEntry;->mGivenName:Ljava/lang/String;

    goto :goto_1

    .line 892
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleOrgValue(ILjava/util/List;Ljava/util/Map;Z)V
    .locals 15
    .parameter "type"
    .parameter
    .parameter
    .parameter "isPrimary"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    .line 654
    .local p2, orgList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    if-nez p2, :cond_0

    .line 655
    sget-object p2, Landroid/pim/vcard/VCardEntry;->sEmptyList:Ljava/util/List;

    .line 664
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v14

    .line 665
    .local v14, size:I
    packed-switch v14, :pswitch_data_0

    .line 737
    const/4 v2, 0x0

    move-object/from16 v0, p2

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 738
    .local v4, companyName:Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p2

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 739
    .local v5, departmentName:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p2

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 740
    .local v6, title:Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, p2

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 741
    .local v7, jobDescription:Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, p2

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 742
    .local v8, symbol:Ljava/lang/String;
    const/4 v2, 0x5

    move-object/from16 v0, p2

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 743
    .local v9, phoneticName:Ljava/lang/String;
    const/4 v2, 0x6

    move-object/from16 v0, p2

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 757
    .local v10, officeLocation:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez v2, :cond_1

    move-object v2, p0

    move/from16 v3, p1

    move/from16 v11, p4

    .line 760
    invoke-direct/range {v2 .. v11}, Landroid/pim/vcard/VCardEntry;->addNewOrganization(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 789
    :goto_1
    return-void

    .line 667
    .end local v4           #companyName:Ljava/lang/String;
    .end local v5           #departmentName:Ljava/lang/String;
    .end local v6           #title:Ljava/lang/String;
    .end local v7           #jobDescription:Ljava/lang/String;
    .end local v8           #symbol:Ljava/lang/String;
    .end local v9           #phoneticName:Ljava/lang/String;
    .end local v10           #officeLocation:Ljava/lang/String;
    :pswitch_0
    const-string v4, ""

    .line 668
    .restart local v4       #companyName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 669
    .restart local v5       #departmentName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 670
    .restart local v6       #title:Ljava/lang/String;
    const/4 v7, 0x0

    .line 671
    .restart local v7       #jobDescription:Ljava/lang/String;
    const/4 v8, 0x0

    .line 672
    .restart local v8       #symbol:Ljava/lang/String;
    const/4 v9, 0x0

    .line 673
    .restart local v9       #phoneticName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 674
    .restart local v10       #officeLocation:Ljava/lang/String;
    goto :goto_0

    .line 677
    .end local v4           #companyName:Ljava/lang/String;
    .end local v5           #departmentName:Ljava/lang/String;
    .end local v6           #title:Ljava/lang/String;
    .end local v7           #jobDescription:Ljava/lang/String;
    .end local v8           #symbol:Ljava/lang/String;
    .end local v9           #phoneticName:Ljava/lang/String;
    .end local v10           #officeLocation:Ljava/lang/String;
    :pswitch_1
    const/4 v2, 0x0

    move-object/from16 v0, p2

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 678
    .restart local v4       #companyName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 679
    .restart local v5       #departmentName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 680
    .restart local v6       #title:Ljava/lang/String;
    const/4 v7, 0x0

    .line 681
    .restart local v7       #jobDescription:Ljava/lang/String;
    const/4 v8, 0x0

    .line 682
    .restart local v8       #symbol:Ljava/lang/String;
    const/4 v9, 0x0

    .line 683
    .restart local v9       #phoneticName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 684
    .restart local v10       #officeLocation:Ljava/lang/String;
    goto :goto_0

    .line 687
    .end local v4           #companyName:Ljava/lang/String;
    .end local v5           #departmentName:Ljava/lang/String;
    .end local v6           #title:Ljava/lang/String;
    .end local v7           #jobDescription:Ljava/lang/String;
    .end local v8           #symbol:Ljava/lang/String;
    .end local v9           #phoneticName:Ljava/lang/String;
    .end local v10           #officeLocation:Ljava/lang/String;
    :pswitch_2
    const/4 v2, 0x0

    move-object/from16 v0, p2

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 688
    .restart local v4       #companyName:Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p2

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 689
    .restart local v5       #departmentName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 690
    .restart local v6       #title:Ljava/lang/String;
    const/4 v7, 0x0

    .line 691
    .restart local v7       #jobDescription:Ljava/lang/String;
    const/4 v8, 0x0

    .line 692
    .restart local v8       #symbol:Ljava/lang/String;
    const/4 v9, 0x0

    .line 693
    .restart local v9       #phoneticName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 694
    .restart local v10       #officeLocation:Ljava/lang/String;
    goto :goto_0

    .line 697
    .end local v4           #companyName:Ljava/lang/String;
    .end local v5           #departmentName:Ljava/lang/String;
    .end local v6           #title:Ljava/lang/String;
    .end local v7           #jobDescription:Ljava/lang/String;
    .end local v8           #symbol:Ljava/lang/String;
    .end local v9           #phoneticName:Ljava/lang/String;
    .end local v10           #officeLocation:Ljava/lang/String;
    :pswitch_3
    const/4 v2, 0x0

    move-object/from16 v0, p2

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 698
    .restart local v4       #companyName:Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p2

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 699
    .restart local v5       #departmentName:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p2

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 700
    .restart local v6       #title:Ljava/lang/String;
    const/4 v7, 0x0

    .line 701
    .restart local v7       #jobDescription:Ljava/lang/String;
    const/4 v8, 0x0

    .line 702
    .restart local v8       #symbol:Ljava/lang/String;
    const/4 v9, 0x0

    .line 703
    .restart local v9       #phoneticName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 704
    .restart local v10       #officeLocation:Ljava/lang/String;
    goto :goto_0

    .line 707
    .end local v4           #companyName:Ljava/lang/String;
    .end local v5           #departmentName:Ljava/lang/String;
    .end local v6           #title:Ljava/lang/String;
    .end local v7           #jobDescription:Ljava/lang/String;
    .end local v8           #symbol:Ljava/lang/String;
    .end local v9           #phoneticName:Ljava/lang/String;
    .end local v10           #officeLocation:Ljava/lang/String;
    :pswitch_4
    const/4 v2, 0x0

    move-object/from16 v0, p2

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 708
    .restart local v4       #companyName:Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p2

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 709
    .restart local v5       #departmentName:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p2

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 710
    .restart local v6       #title:Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, p2

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 711
    .restart local v7       #jobDescription:Ljava/lang/String;
    const/4 v8, 0x0

    .line 712
    .restart local v8       #symbol:Ljava/lang/String;
    const/4 v9, 0x0

    .line 713
    .restart local v9       #phoneticName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 714
    .restart local v10       #officeLocation:Ljava/lang/String;
    goto/16 :goto_0

    .line 717
    .end local v4           #companyName:Ljava/lang/String;
    .end local v5           #departmentName:Ljava/lang/String;
    .end local v6           #title:Ljava/lang/String;
    .end local v7           #jobDescription:Ljava/lang/String;
    .end local v8           #symbol:Ljava/lang/String;
    .end local v9           #phoneticName:Ljava/lang/String;
    .end local v10           #officeLocation:Ljava/lang/String;
    :pswitch_5
    const/4 v2, 0x0

    move-object/from16 v0, p2

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 718
    .restart local v4       #companyName:Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p2

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 719
    .restart local v5       #departmentName:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p2

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 720
    .restart local v6       #title:Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, p2

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 721
    .restart local v7       #jobDescription:Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, p2

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 722
    .restart local v8       #symbol:Ljava/lang/String;
    const/4 v9, 0x0

    .line 723
    .restart local v9       #phoneticName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 724
    .restart local v10       #officeLocation:Ljava/lang/String;
    goto/16 :goto_0

    .line 727
    .end local v4           #companyName:Ljava/lang/String;
    .end local v5           #departmentName:Ljava/lang/String;
    .end local v6           #title:Ljava/lang/String;
    .end local v7           #jobDescription:Ljava/lang/String;
    .end local v8           #symbol:Ljava/lang/String;
    .end local v9           #phoneticName:Ljava/lang/String;
    .end local v10           #officeLocation:Ljava/lang/String;
    :pswitch_6
    const/4 v2, 0x0

    move-object/from16 v0, p2

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 728
    .restart local v4       #companyName:Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p2

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 729
    .restart local v5       #departmentName:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p2

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 730
    .restart local v6       #title:Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, p2

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 731
    .restart local v7       #jobDescription:Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, p2

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 732
    .restart local v8       #symbol:Ljava/lang/String;
    const/4 v2, 0x5

    move-object/from16 v0, p2

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 733
    .restart local v9       #phoneticName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 734
    .restart local v10       #officeLocation:Ljava/lang/String;
    goto/16 :goto_0

    .line 763
    :cond_1
    iget-object v2, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/pim/vcard/VCardEntry$OrganizationData;

    .line 766
    .local v13, organizationData:Landroid/pim/vcard/VCardEntry$OrganizationData;
    iget-object v2, v13, Landroid/pim/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, v13, Landroid/pim/vcard/VCardEntry$OrganizationData;->departmentName:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, v13, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, v13, Landroid/pim/vcard/VCardEntry$OrganizationData;->jobDescription:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, v13, Landroid/pim/vcard/VCardEntry$OrganizationData;->symbol:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, v13, Landroid/pim/vcard/VCardEntry$OrganizationData;->phoneticName:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, v13, Landroid/pim/vcard/VCardEntry$OrganizationData;->officeLocation:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 775
    iput-object v4, v13, Landroid/pim/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    .line 776
    iput-object v5, v13, Landroid/pim/vcard/VCardEntry$OrganizationData;->departmentName:Ljava/lang/String;

    .line 777
    iput-object v6, v13, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    .line 778
    iput-object v7, v13, Landroid/pim/vcard/VCardEntry$OrganizationData;->jobDescription:Ljava/lang/String;

    .line 779
    iput-object v8, v13, Landroid/pim/vcard/VCardEntry$OrganizationData;->symbol:Ljava/lang/String;

    .line 780
    iput-object v9, v13, Landroid/pim/vcard/VCardEntry$OrganizationData;->phoneticName:Ljava/lang/String;

    .line 781
    iput-object v10, v13, Landroid/pim/vcard/VCardEntry$OrganizationData;->officeLocation:Ljava/lang/String;

    .line 782
    move/from16 v0, p4

    move-object v1, v13

    iput-boolean v0, v1, Landroid/pim/vcard/VCardEntry$OrganizationData;->isPrimary:Z

    goto/16 :goto_1

    .end local v13           #organizationData:Landroid/pim/vcard/VCardEntry$OrganizationData;
    :cond_3
    move-object v2, p0

    move/from16 v3, p1

    move/from16 v11, p4

    .line 788
    invoke-direct/range {v2 .. v11}, Landroid/pim/vcard/VCardEntry;->addNewOrganization(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 665
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private handlePhoneticNameFromSound(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, elems:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 910
    iget-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 965
    :cond_0
    :goto_0
    return-void

    .line 919
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, size:I
    if-lt v2, v5, :cond_0

    .line 925
    const/4 v3, 0x3

    if-le v2, v3, :cond_2

    .line 926
    const/4 v2, 0x3

    .line 929
    :cond_2
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 930
    const/4 v1, 0x1

    .line 931
    .local v1, onlyFirstElemIsNonEmpty:Z
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 932
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 933
    const/4 v1, 0x0

    .line 959
    .end local v0           #i:I
    .end local v1           #onlyFirstElemIsNonEmpty:Z
    :cond_3
    packed-switch v2, :pswitch_data_0

    .line 963
    :goto_2
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    goto :goto_0

    .line 931
    .restart local v0       #i:I
    .restart local v1       #onlyFirstElemIsNonEmpty:Z
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 961
    .end local v0           #i:I
    .end local v1           #onlyFirstElemIsNonEmpty:Z
    :pswitch_0
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    .line 962
    :pswitch_1
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    goto :goto_2

    .line 959
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleTitleValue(Ljava/lang/String;)V
    .locals 8
    .parameter "title"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 799
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 802
    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, v2

    invoke-direct/range {v0 .. v6}, Landroid/pim/vcard/VCardEntry;->addNewOrganization(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 805
    :cond_1
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    iget-object v2, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int v1, v2, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/pim/vcard/VCardEntry$OrganizationData;

    .line 806
    .local v7, organizationData:Landroid/pim/vcard/VCardEntry$OrganizationData;
    iget-object v0, v7, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v7, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_0

    .line 807
    :cond_2
    iput-object p1, v7, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    goto :goto_0
.end method

.method private listToString(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x1

    .line 1584
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1585
    .local v3, size:I
    if-le v3, v6, :cond_2

    .line 1586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1587
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1588
    .local v1, i:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1589
    .local v4, type:Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1590
    sub-int v5, v3, v6

    if-ge v1, v5, :cond_0

    .line 1591
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1594
    .end local v4           #type:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1598
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local p0
    :goto_1
    return-object v5

    .line 1595
    .restart local p0
    :cond_2
    if-ne v3, v6, :cond_3

    .line 1596
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v5, p0

    goto :goto_1

    .line 1598
    .restart local p0
    :cond_3
    const-string v5, ""

    goto :goto_1
.end method

.method private nameFieldsAreEmpty()Z
    .locals 1

    .prologue
    .line 1567
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mFamilyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mMiddleName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mGivenName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mSuffix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tryHandleSortAsName(Ljava/util/Map;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    const/4 v6, 0x1

    .line 849
    iget v3, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    invoke-static {v3}, Landroid/pim/vcard/VCardConfig;->isVersion30(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 875
    :cond_0
    :goto_0
    return-void

    .line 856
    :cond_1
    const-string v3, "SORT-AS"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 857
    .local v1, sortAsCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 858
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-le v3, v6, :cond_2

    .line 859
    const-string v3, "VCardEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incorrect multiple SORT_AS parameters detected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget v4, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    invoke-static {v3, v4}, Landroid/pim/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 865
    .local v2, sortNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 866
    .local v0, size:I
    const/4 v3, 0x3

    if-le v0, v3, :cond_3

    .line 867
    const/4 v0, 0x3

    .line 869
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 872
    :goto_1
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    goto :goto_0

    .line 870
    :pswitch_0
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    .line 871
    :pswitch_1
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    goto :goto_1

    .line 869
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addProperty(Landroid/pim/vcard/VCardEntry$Property;)V
    .locals 31
    .parameter "property"

    .prologue
    .line 968
    invoke-static/range {p1 .. p1}, Landroid/pim/vcard/VCardEntry$Property;->access$000(Landroid/pim/vcard/VCardEntry$Property;)Ljava/lang/String;

    move-result-object v22

    .line 969
    .local v22, propName:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/pim/vcard/VCardEntry$Property;->access$100(Landroid/pim/vcard/VCardEntry$Property;)Ljava/util/Map;

    move-result-object v18

    .line 970
    .local v18, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    invoke-static/range {p1 .. p1}, Landroid/pim/vcard/VCardEntry$Property;->access$200(Landroid/pim/vcard/VCardEntry$Property;)Ljava/util/List;

    move-result-object v23

    .line 971
    .local v23, propValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Landroid/pim/vcard/VCardEntry$Property;->access$300(Landroid/pim/vcard/VCardEntry$Property;)[B

    move-result-object v21

    .line 972
    .local v21, propBytes:[B
    const/16 v16, 0x1

    .line 974
    .local v16, isEmpty:Z
    const/4 v14, 0x0

    .end local p1
    .local v14, i:I
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v5

    if-ge v14, v5, :cond_1

    .line 975
    move-object/from16 v0, v23

    move v1, v14

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 976
    const/16 v16, 0x0

    .line 974
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 979
    :cond_1
    const/4 v5, 0x1

    move/from16 v0, v16

    move v1, v5

    if-ne v0, v1, :cond_3

    .line 1231
    :cond_2
    :goto_1
    return-void

    .line 983
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardEntry;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 985
    .local v9, propValue:Ljava/lang/String;
    const-string v5, "VERSION"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 987
    const-string v5, "FN"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 988
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    goto :goto_1

    .line 989
    :cond_4
    const-string v5, "NAME"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    move-object v5, v0

    if-nez v5, :cond_5

    .line 992
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    goto :goto_1

    .line 993
    :cond_5
    const-string v5, "N"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 994
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/pim/vcard/VCardEntry;->handleNProperty(Ljava/util/List;Ljava/util/Map;)V

    goto :goto_1

    .line 995
    :cond_6
    const-string v5, "SORT-STRING"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 996
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    goto :goto_1

    .line 997
    :cond_7
    const-string v5, "NICKNAME"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "X-NICKNAME"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 999
    :cond_8
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardEntry;->addNickName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1000
    :cond_9
    const-string v5, "SOUND"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1001
    const-string v5, "TYPE"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Collection;

    .line 1002
    .local v24, typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v24, :cond_2

    const-string v5, "X-IRMC-N"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1008
    move-object/from16 v0, p0

    iget v0, v0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    move v5, v0

    invoke-static {v9, v5}, Landroid/pim/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v20

    .line 1010
    .local v20, phoneticNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardEntry;->handlePhoneticNameFromSound(Ljava/util/List;)V

    goto/16 :goto_1

    .line 1014
    .end local v20           #phoneticNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v24           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_a
    const-string v5, "ADR"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1015
    const/16 v30, 0x1

    .line 1016
    .local v30, valuesAreAllEmpty:Z
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 1017
    .local v29, value:Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_b

    .line 1018
    const/16 v30, 0x0

    .line 1022
    .end local v29           #value:Ljava/lang/String;
    :cond_c
    if-nez v30, :cond_2

    .line 1026
    const/4 v8, -0x1

    .line 1027
    .local v8, type:I
    const-string v17, ""

    .line 1028
    .local v17, label:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1029
    .local v10, isPrimary:Z
    const-string v5, "TYPE"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Collection;

    .line 1030
    .restart local v24       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v24, :cond_14

    .line 1031
    invoke-interface/range {v24 .. v24}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_d
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 1032
    .local v26, typeString:Ljava/lang/String;
    move-object/from16 v27, v26

    .line 1033
    .local v27, typeStringOrigin:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v26

    .line 1034
    const-string v5, "PREF"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1035
    const/4 v10, 0x1

    goto :goto_2

    .line 1036
    :cond_e
    const-string v5, "HOME"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1037
    const/4 v8, 0x1

    .line 1038
    const-string v17, ""

    goto :goto_2

    .line 1039
    :cond_f
    const-string v5, "WORK"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string v5, "COMPANY"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1044
    :cond_10
    const/4 v8, 0x2

    .line 1045
    const-string v17, ""

    goto :goto_2

    .line 1046
    :cond_11
    const-string v5, "PARCEL"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "DOM"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "INTL"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 1050
    const-string v5, "OTHER"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1051
    const/4 v8, 0x3

    .line 1052
    const-string v17, ""

    goto :goto_2

    .line 1054
    :cond_12
    const-string v5, "X-"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    if-gez v8, :cond_13

    .line 1055
    const/4 v5, 0x2

    move-object/from16 v0, v27

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    .line 1059
    :cond_13
    const/4 v8, 0x0

    .line 1060
    move-object/from16 v17, v27

    goto/16 :goto_2

    .line 1065
    .end local v26           #typeString:Ljava/lang/String;
    .end local v27           #typeStringOrigin:Ljava/lang/String;
    :cond_14
    if-gez v8, :cond_15

    .line 1066
    const/4 v8, 0x1

    .line 1069
    :cond_15
    move-object/from16 v0, p0

    move v1, v8

    move-object/from16 v2, v23

    move-object/from16 v3, v17

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/pim/vcard/VCardEntry;->addPostal(ILjava/util/List;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1070
    .end local v8           #type:I
    .end local v10           #isPrimary:Z
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v17           #label:Ljava/lang/String;
    .end local v24           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v30           #valuesAreAllEmpty:Z
    :cond_16
    const-string v5, "EMAIL"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1071
    const/4 v8, -0x1

    .line 1072
    .restart local v8       #type:I
    const/16 v17, 0x0

    .line 1073
    .restart local v17       #label:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1074
    .restart local v10       #isPrimary:Z
    const-string v5, "TYPE"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Collection;

    .line 1075
    .restart local v24       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v24, :cond_1d

    .line 1076
    invoke-interface/range {v24 .. v24}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 1077
    .restart local v26       #typeString:Ljava/lang/String;
    move-object/from16 v27, v26

    .line 1078
    .restart local v27       #typeStringOrigin:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v26

    .line 1079
    const-string v5, "PREF"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1080
    const/4 v10, 0x1

    goto :goto_3

    .line 1081
    :cond_17
    const-string v5, "HOME"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1082
    const/4 v8, 0x1

    goto :goto_3

    .line 1083
    :cond_18
    const-string v5, "WORK"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1084
    const/4 v8, 0x2

    goto :goto_3

    .line 1085
    :cond_19
    const-string v5, "CELL"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1086
    const/4 v8, 0x4

    goto :goto_3

    .line 1087
    :cond_1a
    const-string v5, "OTHER"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1088
    const/4 v8, 0x3

    goto :goto_3

    .line 1090
    :cond_1b
    const-string v5, "X-"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    if-gez v8, :cond_1c

    .line 1091
    const/4 v5, 0x2

    move-object/from16 v0, v27

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    .line 1096
    :cond_1c
    const/4 v8, 0x0

    .line 1097
    move-object/from16 v17, v27

    goto :goto_3

    .line 1101
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v26           #typeString:Ljava/lang/String;
    .end local v27           #typeStringOrigin:Ljava/lang/String;
    :cond_1d
    if-gez v8, :cond_1e

    .line 1102
    const/4 v8, 0x3

    .line 1104
    :cond_1e
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move-object/from16 v3, v17

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/pim/vcard/VCardEntry;->addEmail(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1105
    .end local v8           #type:I
    .end local v10           #isPrimary:Z
    .end local v17           #label:Ljava/lang/String;
    .end local v24           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_1f
    const-string v5, "ORG"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 1107
    const/4 v8, 0x1

    .line 1108
    .restart local v8       #type:I
    const/4 v10, 0x0

    .line 1109
    .restart local v10       #isPrimary:Z
    const-string v5, "TYPE"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Collection;

    .line 1110
    .restart local v24       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v24, :cond_21

    .line 1111
    invoke-interface/range {v24 .. v24}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15       #i$:Ljava/util/Iterator;
    :cond_20
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 1112
    .restart local v26       #typeString:Ljava/lang/String;
    const-string v5, "PREF"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 1113
    const/4 v10, 0x1

    goto :goto_4

    .line 1117
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v26           #typeString:Ljava/lang/String;
    :cond_21
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, v23

    move-object/from16 v3, v18

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/pim/vcard/VCardEntry;->handleOrgValue(ILjava/util/List;Ljava/util/Map;Z)V

    goto/16 :goto_1

    .line 1118
    .end local v8           #type:I
    .end local v10           #isPrimary:Z
    .end local v24           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_22
    const-string v5, "TITLE"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 1119
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardEntry;->handleTitleValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1120
    :cond_23
    const-string v5, "ROLE"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1123
    const-string v5, "PHOTO"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_24

    const-string v5, "LOGO"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 1125
    :cond_24
    const-string v5, "VALUE"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Collection;

    .line 1126
    .local v19, paramMapValue:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v19, :cond_25

    const-string v5, "URL"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1129
    :cond_25
    const-string v5, "TYPE"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Collection;

    .line 1130
    .restart local v24       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 1131
    .local v13, formatName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1132
    .restart local v10       #isPrimary:Z
    if-eqz v24, :cond_28

    .line 1133
    invoke-interface/range {v24 .. v24}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15       #i$:Ljava/util/Iterator;
    :cond_26
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 1134
    .local v28, typeValue:Ljava/lang/String;
    const-string v5, "PREF"

    move-object v0, v5

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 1135
    const/4 v10, 0x1

    goto :goto_5

    .line 1136
    :cond_27
    if-nez v13, :cond_26

    .line 1137
    move-object/from16 v13, v28

    goto :goto_5

    .line 1141
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v28           #typeValue:Ljava/lang/String;
    :cond_28
    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, v21

    move v3, v10

    invoke-direct {v0, v1, v2, v3}, Landroid/pim/vcard/VCardEntry;->addPhotoBytes(Ljava/lang/String;[BZ)V

    goto/16 :goto_1

    .line 1143
    .end local v10           #isPrimary:Z
    .end local v13           #formatName:Ljava/lang/String;
    .end local v19           #paramMapValue:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v24           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_29
    const-string v5, "TEL"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 1144
    const-string v5, "TYPE"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Collection;

    .line 1145
    .restart local v24       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, v24

    move-object v1, v9

    invoke-static {v0, v1}, Landroid/pim/vcard/VCardUtils;->getPhoneTypeFromStrings(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    .line 1149
    .local v25, typeObject:Ljava/lang/Object;
    move-object/from16 v0, v25

    instance-of v0, v0, Ljava/lang/Integer;

    move v5, v0

    if-eqz v5, :cond_2a

    .line 1150
    check-cast v25, Ljava/lang/Integer;

    .end local v25           #typeObject:Ljava/lang/Object;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1151
    .restart local v8       #type:I
    const/16 v17, 0x0

    .line 1158
    .restart local v17       #label:Ljava/lang/String;
    :goto_6
    if-eqz v24, :cond_2b

    const-string v5, "PREF"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1159
    const/4 v10, 0x1

    .line 1163
    .restart local v10       #isPrimary:Z
    :goto_7
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move-object/from16 v3, v17

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/pim/vcard/VCardEntry;->addPhone(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1153
    .end local v8           #type:I
    .end local v10           #isPrimary:Z
    .end local v17           #label:Ljava/lang/String;
    .restart local v25       #typeObject:Ljava/lang/Object;
    :cond_2a
    const/4 v8, 0x0

    .line 1154
    .restart local v8       #type:I
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .restart local v17       #label:Ljava/lang/String;
    goto :goto_6

    .line 1161
    .end local v25           #typeObject:Ljava/lang/Object;
    :cond_2b
    const/4 v10, 0x0

    .restart local v10       #isPrimary:Z
    goto :goto_7

    .line 1164
    .end local v8           #type:I
    .end local v10           #isPrimary:Z
    .end local v17           #label:Ljava/lang/String;
    .end local v24           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_2c
    const-string v5, "X-SKYPE-PSTNNUMBER"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 1166
    const-string v5, "TYPE"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Collection;

    .line 1167
    .restart local v24       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v8, 0x7

    .line 1169
    .restart local v8       #type:I
    if-eqz v24, :cond_2d

    const-string v5, "PREF"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 1170
    const/4 v10, 0x1

    .line 1174
    .restart local v10       #isPrimary:Z
    :goto_8
    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v9

    move-object v3, v6

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/pim/vcard/VCardEntry;->addPhone(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1172
    .end local v10           #isPrimary:Z
    :cond_2d
    const/4 v10, 0x0

    .restart local v10       #isPrimary:Z
    goto :goto_8

    .line 1175
    .end local v8           #type:I
    .end local v10           #isPrimary:Z
    .end local v24           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_2e
    sget-object v5, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 1176
    sget-object v5, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1177
    .local v6, protocol:I
    const/4 v10, 0x0

    .line 1178
    .restart local v10       #isPrimary:Z
    const/4 v8, -0x1

    .line 1179
    .restart local v8       #type:I
    const-string v5, "TYPE"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Collection;

    .line 1180
    .restart local v24       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v24, :cond_32

    .line 1181
    invoke-interface/range {v24 .. v24}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15       #i$:Ljava/util/Iterator;
    :cond_2f
    :goto_9
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 1182
    .restart local v26       #typeString:Ljava/lang/String;
    const-string v5, "PREF"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 1183
    const/4 v10, 0x1

    goto :goto_9

    .line 1184
    :cond_30
    if-gez v8, :cond_2f

    .line 1185
    const-string v5, "HOME"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 1186
    const/4 v8, 0x1

    goto :goto_9

    .line 1187
    :cond_31
    const-string v5, "WORK"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 1188
    const/4 v8, 0x2

    goto :goto_9

    .line 1193
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v26           #typeString:Ljava/lang/String;
    :cond_32
    if-gez v8, :cond_33

    .line 1194
    const/4 v8, 0x1

    .line 1196
    :cond_33
    const/4 v7, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Landroid/pim/vcard/VCardEntry;->addIm(ILjava/lang/String;ILjava/lang/String;Z)V

    goto/16 :goto_1

    .line 1197
    .end local v6           #protocol:I
    .end local v8           #type:I
    .end local v10           #isPrimary:Z
    .end local v24           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_34
    const-string v5, "NOTE"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 1198
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardEntry;->addNote(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1199
    :cond_35
    const-string v5, "URL"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 1200
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    move-object v5, v0

    if-nez v5, :cond_36

    .line 1201
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    .line 1203
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1204
    :cond_37
    const-string v5, "BDAY"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 1205
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_38

    const-string v5, "-"

    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_38

    .line 1207
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1208
    .local v11, BdayBuilder:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v9, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1209
    const/16 v5, 0x2d

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1210
    const/4 v5, 0x4

    const/4 v6, 0x6

    invoke-virtual {v9, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1211
    const/16 v5, 0x2d

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1212
    const/4 v5, 0x6

    const/16 v6, 0x8

    invoke-virtual {v9, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1213
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mBirthday:Ljava/lang/String;

    goto/16 :goto_1

    .line 1217
    .end local v11           #BdayBuilder:Ljava/lang/StringBuilder;
    :cond_38
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mBirthday:Ljava/lang/String;

    goto/16 :goto_1

    .line 1219
    :cond_39
    const-string v5, "X-PHONETIC-FIRST-NAME"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 1220
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    goto/16 :goto_1

    .line 1221
    :cond_3a
    const-string v5, "X-PHONETIC-MIDDLE-NAME"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 1222
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    goto/16 :goto_1

    .line 1223
    :cond_3b
    const-string v5, "X-PHONETIC-LAST-NAME"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 1224
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    goto/16 :goto_1

    .line 1225
    :cond_3c
    const-string v5, "X-ANDROID-CUSTOM"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1226
    move-object/from16 v0, p0

    iget v0, v0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    move v5, v0

    invoke-static {v9, v5}, Landroid/pim/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v12

    .line 1228
    .local v12, customPropertyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardEntry;->handleAndroidCustomProperty(Ljava/util/List;)V

    goto/16 :goto_1
.end method

.method public consolidateFields()V
    .locals 1

    .prologue
    .line 1273
    invoke-direct {p0}, Landroid/pim/vcard/VCardEntry;->constructDisplayName()V

    .line 1275
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1276
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    .line 1278
    :cond_0
    return-void
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1655
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mBirthday:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1691
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1692
    invoke-direct {p0}, Landroid/pim/vcard/VCardEntry;->constructDisplayName()V

    .line 1694
    :cond_0
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmailList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$EmailData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1667
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    return-object v0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1611
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1631
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    return-object v0
.end method

.method public getGivenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1615
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mGivenName:Ljava/lang/String;

    return-object v0
.end method

.method public final getImList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$ImData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1679
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mImList:Ljava/util/List;

    return-object v0
.end method

.method public getMiddleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1619
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mMiddleName:Ljava/lang/String;

    return-object v0
.end method

.method public final getNickNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1651
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    return-object v0
.end method

.method public final getNotes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1659
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    return-object v0
.end method

.method public final getOrganizationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$OrganizationData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1675
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    return-object v0
.end method

.method public final getPhoneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$PhoneData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1663
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    return-object v0
.end method

.method public getPhoneticFamilyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1635
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneticFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1647
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneticGivenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1639
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneticMiddleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1643
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhotoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$PhotoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1683
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    return-object v0
.end method

.method public final getPostalList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$PostalData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1671
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1623
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1627
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public final getWebsiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1687
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    return-object v0
.end method

.method public isIgnorable()Z
    .locals 1

    .prologue
    .line 1580
    invoke-virtual {p0}, Landroid/pim/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pushIntoContentResolver(Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 31
    .parameter "resolver"

    .prologue
    .line 1281
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1285
    .local v23, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1287
    .local v9, builder:Landroid/content/ContentProviderOperation$Builder;
    const/16 v20, 0x0

    .line 1288
    .local v20, myGroupsId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    move-object v3, v0

    if-eqz v3, :cond_6

    .line 1289
    const-string v3, "account_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    move-object v4, v0

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1290
    const-string v3, "account_type"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    move-object v4, v0

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1293
    const-string v3, "com.google"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    move-object v4, v0

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1294
    sget-object v4, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v6, "sourceid"

    aput-object v6, v5, v3

    const-string/jumbo v6, "title=?"

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v8, "System Group: My Contacts"

    aput-object v8, v7, v3

    const/4 v8, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1299
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1300
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v20

    .line 1303
    :cond_0
    if-eqz v10, :cond_1

    .line 1304
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1312
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1314
    invoke-direct/range {p0 .. p0}, Landroid/pim/vcard/VCardEntry;->nameFieldsAreEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1315
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1316
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1317
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/name"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1319
    const-string v3, "data2"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mGivenName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1320
    const-string v3, "data3"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mFamilyName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1321
    const-string v3, "data5"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mMiddleName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1322
    const-string v3, "data4"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPrefix:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1323
    const-string v3, "data6"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mSuffix:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1325
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1328
    :cond_2
    const-string v3, "data7"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1329
    const-string v3, "data9"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1330
    const-string v3, "data8"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1335
    :cond_3
    :goto_1
    const-string v3, "data1"

    invoke-virtual/range {p0 .. p0}, Landroid/pim/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1336
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1339
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 1340
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 1341
    .local v21, nickName:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1342
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1343
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/nickname"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1344
    const-string v3, "data2"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1345
    const-string v3, "data1"

    move-object v0, v9

    move-object v1, v3

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1346
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1303
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v21           #nickName:Ljava/lang/String;
    .restart local v10       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    if-eqz v10, :cond_5

    .line 1304
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v3

    .line 1309
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_6
    const-string v3, "account_name"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1310
    const-string v3, "account_type"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_0

    .line 1331
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1332
    const-string v3, "data7"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 1350
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_b

    .line 1351
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/pim/vcard/VCardEntry$PhoneData;

    .line 1352
    .local v25, phoneData:Landroid/pim/vcard/VCardEntry$PhoneData;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1353
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1354
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1356
    const-string v3, "data2"

    move-object/from16 v0, v25

    iget v0, v0, Landroid/pim/vcard/VCardEntry$PhoneData;->type:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1357
    move-object/from16 v0, v25

    iget v0, v0, Landroid/pim/vcard/VCardEntry$PhoneData;->type:I

    move v3, v0

    if-nez v3, :cond_9

    .line 1358
    const-string v3, "data3"

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$PhoneData;->label:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1360
    :cond_9
    const-string v3, "data1"

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$PhoneData;->data:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1361
    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroid/pim/vcard/VCardEntry$PhoneData;->isPrimary:Z

    move v3, v0

    if-eqz v3, :cond_a

    .line 1362
    const-string v3, "is_primary"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1364
    :cond_a
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1368
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v25           #phoneData:Landroid/pim/vcard/VCardEntry$PhoneData;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_14

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/pim/vcard/VCardEntry$OrganizationData;

    .line 1370
    .local v24, organizationData:Landroid/pim/vcard/VCardEntry$OrganizationData;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1371
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1372
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/organization"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1373
    const-string v3, "data2"

    move-object/from16 v0, v24

    iget v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->type:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1374
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_c

    .line 1375
    const-string v3, "data1"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1377
    :cond_c
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->departmentName:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_d

    .line 1378
    const-string v3, "data5"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->departmentName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1380
    :cond_d
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_e

    .line 1381
    const-string v3, "data4"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1383
    :cond_e
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->jobDescription:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_f

    .line 1384
    const-string v3, "data6"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->jobDescription:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1386
    :cond_f
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->symbol:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_10

    .line 1387
    const-string v3, "data7"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->symbol:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1389
    :cond_10
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->phoneticName:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_11

    .line 1390
    const-string v3, "data8"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->phoneticName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1392
    :cond_11
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->officeLocation:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_12

    .line 1393
    const-string v3, "data9"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->officeLocation:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1395
    :cond_12
    move-object/from16 v0, v24

    iget-boolean v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->isPrimary:Z

    move v3, v0

    if-eqz v3, :cond_13

    .line 1396
    const-string v3, "is_primary"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1398
    :cond_13
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1402
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v24           #organizationData:Landroid/pim/vcard/VCardEntry$OrganizationData;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_17

    .line 1403
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/pim/vcard/VCardEntry$EmailData;

    .line 1404
    .local v14, emailData:Landroid/pim/vcard/VCardEntry$EmailData;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1405
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1406
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1408
    const-string v3, "data2"

    iget v4, v14, Landroid/pim/vcard/VCardEntry$EmailData;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1409
    iget v3, v14, Landroid/pim/vcard/VCardEntry$EmailData;->type:I

    if-nez v3, :cond_15

    .line 1410
    const-string v3, "data3"

    iget-object v4, v14, Landroid/pim/vcard/VCardEntry$EmailData;->label:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1412
    :cond_15
    const-string v3, "data1"

    iget-object v4, v14, Landroid/pim/vcard/VCardEntry$EmailData;->data:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1413
    iget-boolean v3, v14, Landroid/pim/vcard/VCardEntry$EmailData;->isPrimary:Z

    if-eqz v3, :cond_16

    .line 1414
    const-string v3, "is_primary"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1416
    :cond_16
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1420
    .end local v14           #emailData:Landroid/pim/vcard/VCardEntry$EmailData;
    .end local v16           #i$:Ljava/util/Iterator;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_18

    .line 1421
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/pim/vcard/VCardEntry$PostalData;

    .line 1422
    .local v27, postalData:Landroid/pim/vcard/VCardEntry$PostalData;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1423
    move-object/from16 v0, p0

    iget v0, v0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    move v3, v0

    move v0, v3

    move-object v1, v9

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/pim/vcard/VCardUtils;->insertStructuredPostalDataUsingContactsStruct(ILandroid/content/ContentProviderOperation$Builder;Landroid/pim/vcard/VCardEntry$PostalData;)V

    .line 1425
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1429
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v27           #postalData:Landroid/pim/vcard/VCardEntry$PostalData;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mImList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_1b

    .line 1430
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mImList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/pim/vcard/VCardEntry$ImData;

    .line 1431
    .local v18, imData:Landroid/pim/vcard/VCardEntry$ImData;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1432
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1433
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/im"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1434
    const-string v3, "data2"

    move-object/from16 v0, v18

    iget v0, v0, Landroid/pim/vcard/VCardEntry$ImData;->type:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1435
    const-string v3, "data5"

    move-object/from16 v0, v18

    iget v0, v0, Landroid/pim/vcard/VCardEntry$ImData;->protocol:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1436
    const-string v3, "data1"

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$ImData;->data:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1437
    move-object/from16 v0, v18

    iget v0, v0, Landroid/pim/vcard/VCardEntry$ImData;->protocol:I

    move v3, v0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_19

    .line 1438
    const-string v3, "data6"

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$ImData;->customProtocol:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1440
    :cond_19
    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/pim/vcard/VCardEntry$ImData;->isPrimary:Z

    move v3, v0

    if-eqz v3, :cond_1a

    .line 1441
    const-string v3, "is_primary"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1443
    :cond_1a
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1447
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v18           #imData:Landroid/pim/vcard/VCardEntry$ImData;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_1c

    .line 1448
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 1449
    .local v22, note:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1450
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1451
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/note"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1452
    const-string v3, "data1"

    move-object v0, v9

    move-object v1, v3

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1453
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1457
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v22           #note:Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_1e

    .line 1458
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/pim/vcard/VCardEntry$PhotoData;

    .line 1459
    .local v26, photoData:Landroid/pim/vcard/VCardEntry$PhotoData;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1460
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1461
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/photo"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1462
    const-string v3, "data15"

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$PhotoData;->photoBytes:[B

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1463
    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/pim/vcard/VCardEntry$PhotoData;->isPrimary:Z

    move v3, v0

    if-eqz v3, :cond_1d

    .line 1464
    const-string v3, "is_primary"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1466
    :cond_1d
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1470
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v26           #photoData:Landroid/pim/vcard/VCardEntry$PhotoData;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_1f

    .line 1471
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 1472
    .local v30, website:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1473
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1474
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/website"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1475
    const-string v3, "data1"

    move-object v0, v9

    move-object v1, v3

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1478
    const-string v3, "data2"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1479
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 1483
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v30           #website:Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mBirthday:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 1484
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1485
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1486
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1487
    const-string v3, "data1"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mBirthday:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1488
    const-string v3, "data2"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1489
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1492
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAnniversary:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 1493
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1494
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1495
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1496
    const-string v3, "data1"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAnniversary:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1497
    const-string v3, "data2"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1498
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1501
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAndroidCustomPropertyList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_27

    .line 1502
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAndroidCustomPropertyList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .end local p0
    :cond_22
    :goto_b
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 1503
    .local v11, customPropertyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v29

    .line 1504
    .local v29, size:I
    const/4 v3, 0x2

    move/from16 v0, v29

    move v1, v3

    if-lt v0, v1, :cond_22

    const/4 v3, 0x0

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 1506
    const/16 v3, 0x10

    move/from16 v0, v29

    move v1, v3

    if-le v0, v1, :cond_23

    .line 1507
    const/16 v29, 0x10

    .line 1508
    const/4 v3, 0x0

    const/16 v4, 0x11

    invoke-interface {v11, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v11

    .line 1512
    :cond_23
    const/4 v15, 0x0

    .line 1513
    .local v15, i:I
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1514
    .local v12, customPropertyValue:Ljava/lang/String;
    if-nez v15, :cond_25

    .line 1515
    move-object/from16 v19, v12

    .line 1516
    .local v19, mimeType:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1517
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1518
    const-string v3, "mimetype"

    move-object v0, v9

    move-object v1, v3

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1525
    .end local v19           #mimeType:Ljava/lang/String;
    :cond_24
    :goto_d
    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    .line 1520
    :cond_25
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 1521
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_d

    .line 1527
    .end local v12           #customPropertyValue:Ljava/lang/String;
    :cond_26
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 1531
    .end local v11           #customPropertyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v15           #i:I
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v29           #size:I
    :cond_27
    if-eqz v20, :cond_28

    .line 1532
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1533
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1534
    const-string v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1535
    const-string v3, "group_sourceid"

    move-object v0, v9

    move-object v1, v3

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1536
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1540
    :cond_28
    :try_start_1
    const-string v3, "com.android.contacts"

    move-object/from16 v0, p1

    move-object v1, v3

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v28

    .line 1545
    .local v28, results:[Landroid/content/ContentProviderResult;
    if-eqz v28, :cond_29

    move-object/from16 v0, v28

    array-length v0, v0

    move v3, v0

    if-eqz v3, :cond_29

    const/4 v3, 0x0

    aget-object v3, v28, v3

    if-nez v3, :cond_2a

    :cond_29
    const/4 v3, 0x0

    .line 1553
    .end local v28           #results:[Landroid/content/ContentProviderResult;
    :goto_e
    return-object v3

    .line 1545
    .restart local v28       #results:[Landroid/content/ContentProviderResult;
    :cond_2a
    const/4 v3, 0x0

    aget-object v3, v28, v3

    iget-object v3, v3, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_e

    .line 1548
    .end local v28           #results:[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v3

    move-object v13, v3

    .line 1549
    .local v13, e:Landroid/os/RemoteException;
    const-string v3, "VCardEntry"

    const-string v4, "%s: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v13}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v13}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    const/4 v3, 0x0

    goto :goto_e

    .line 1551
    .end local v13           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    move-object v13, v3

    .line 1552
    .local v13, e:Landroid/content/OperationApplicationException;
    const-string v3, "VCardEntry"

    const-string v4, "%s: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v13}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v13}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    const/4 v3, 0x0

    goto :goto_e
.end method
