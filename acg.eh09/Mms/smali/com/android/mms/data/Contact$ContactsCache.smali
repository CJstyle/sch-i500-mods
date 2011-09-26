.class public Lcom/android/mms/data/Contact$ContactsCache;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactsCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/Contact$ContactsCache$TaskStack;
    }
.end annotation


# static fields
.field private static final CALLER_ID_PROJECTION:[Ljava/lang/String;

.field private static final EMAIL_PROJECTION:[Ljava/lang/String;

.field private static final EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

.field private static final PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

.field static sStaticKeyBuffer:Ljava/nio/CharBuffer;


# instance fields
.field private final mContactsHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/data/Contact;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mTaskQueue:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 432
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 434
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v3

    const-string v1, "data3"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v1, v0, v5

    const-string v1, "contact_id"

    aput-object v1, v0, v6

    const-string v1, "contact_presence"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    .line 451
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 456
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "data4"

    aput-object v1, v0, v3

    const-string v1, "contact_presence"

    aput-object v1, v0, v4

    const-string v1, "contact_id"

    aput-object v1, v0, v5

    const-string v1, "display_name"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_PROJECTION:[Ljava/lang/String;

    .line 1003
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->sStaticKeyBuffer:Ljava/nio/CharBuffer;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    new-instance v0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    invoke-direct {v0}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mTaskQueue:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    .line 469
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    .line 473
    iput-object p1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    .line 474
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/mms/data/Contact$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/data/Contact$ContactsCache;Lcom/android/mms/data/Contact;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 419
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/Contact$ContactsCache;->updateContact(Lcom/android/mms/data/Contact;Z)V

    return-void
.end method

.method private contactChanged(Lcom/android/mms/data/Contact;Lcom/android/mms/data/Contact;)Z
    .locals 11
    .parameter "orig"
    .parameter "newContactData"

    .prologue
    const/4 v10, 0x1

    .line 597
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$600(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/data/Contact;->access$700(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 598
    .local v4, oldName:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$600(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/data/Contact;->access$700(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 599
    .local v1, newName:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v10

    .line 637
    :goto_0
    return v6

    .line 604
    :cond_0
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/data/Contact;->access$700(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 605
    .local v3, oldLabel:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/data/Contact;->access$700(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, newLabel:Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    move v6, v10

    .line 608
    goto :goto_0

    .line 612
    :cond_1
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)J

    move-result-wide v6

    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    move v6, v10

    .line 614
    goto :goto_0

    .line 617
    :cond_2
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)I

    move-result v6

    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)I

    move-result v7

    if-eq v6, v7, :cond_3

    move v6, v10

    .line 619
    goto :goto_0

    .line 622
    :cond_3
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1100(Lcom/android/mms/data/Contact;)[B

    move-result-object v6

    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1100(Lcom/android/mms/data/Contact;)[B

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_4

    move v6, v10

    .line 624
    goto :goto_0

    .line 630
    :cond_4
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/data/Contact;->access$700(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 631
    .local v5, oldNumber:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/data/Contact;->access$700(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 632
    .local v2, newNumber:Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    move v6, v10

    .line 634
    goto :goto_0

    .line 637
    :cond_5
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private getContactInfoForEmailAddress(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 13
    .parameter "email"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v12, 0x0

    .line 923
    new-instance v9, Lcom/android/mms/data/Contact;

    invoke-direct {v9, p1, v6}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    .line 925
    .local v9, entry:Lcom/android/mms/data/Contact;
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_PROJECTION:[Ljava/lang/String;

    const-string v4, "UPPER(data1)=UPPER(?) AND mimetype=\'vnd.android.cursor.item/email_v2\'"

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v12

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 932
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 934
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 935
    const/4 v10, 0x0

    .line 937
    .local v10, found:Z
    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 938
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/data/Contact$ContactsCache;->getPresenceIconResourceId(I)I

    move-result v0

    invoke-static {v9, v0}, Lcom/android/mms/data/Contact;->access$1002(Lcom/android/mms/data/Contact;I)I

    .line 940
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v9, v0, v1}, Lcom/android/mms/data/Contact;->access$902(Lcom/android/mms/data/Contact;J)J

    .line 942
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 943
    .local v11, name:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 944
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 946
    :cond_1
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 947
    invoke-static {v9, v11}, Lcom/android/mms/data/Contact;->access$602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 953
    const/4 v10, 0x1

    .line 955
    :cond_2
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 957
    if-eqz v10, :cond_0

    .line 958
    :try_start_2
    invoke-direct {p0, v9}, Lcom/android/mms/data/Contact$ContactsCache;->loadAvatarData(Lcom/android/mms/data/Contact;)[B

    move-result-object v8

    .line 959
    .local v8, data:[B
    monitor-enter v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 960
    :try_start_3
    invoke-static {v9, v8}, Lcom/android/mms/data/Contact;->access$1102(Lcom/android/mms/data/Contact;[B)[B

    .line 961
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 967
    .end local v8           #data:[B
    .end local v10           #found:Z
    .end local v11           #name:Ljava/lang/String;
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 970
    :cond_4
    return-object v9

    .line 955
    .restart local v10       #found:Z
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 967
    .end local v10           #found:Z
    :catchall_1
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 961
    .restart local v8       #data:[B
    .restart local v10       #found:Z
    .restart local v11       #name:Ljava/lang/String;
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method private getContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 14
    .parameter "number"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    const-string v2, ";"

    .line 749
    move-object v6, p1

    .line 750
    .local v6, backup:Ljava/lang/String;
    const-string v12, ".*[a-zA-Z]+.*"

    .line 751
    .local v12, reg1:Ljava/lang/String;
    const-string v13, ".*(\\<[1234567890\\-\\*\\#\\+]+\\>)"

    .line 752
    .local v13, reg2:Ljava/lang/String;
    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 753
    .local v11, p:Ljava/util/regex/Pattern;
    invoke-static {v12, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    invoke-virtual {v11, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 755
    .local v10, m:Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 756
    invoke-virtual {v10, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 762
    .end local v10           #m:Ljava/util/regex/Matcher;
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 765
    const-string v0, ";"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 766
    const-string v0, ";"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 768
    :cond_1
    new-instance v9, Lcom/android/mms/data/Contact;

    invoke-direct {v9, p1, v1}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    .line 775
    .local v9, entry:Lcom/android/mms/data/Contact;
    const-string v0, "PHONE_NUMBERS_EQUAL(data1,?) AND mimetype=\'vnd.android.cursor.item/phone_v2\' AND raw_contact_id IN (SELECT raw_contact_id  FROM phone_lookup WHERE normalized_number GLOB(\'+*\'))"

    const-string v1, "+"

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 777
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const-string v5, "is_sim asc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 784
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_3

    .line 785
    const-string v0, "Mms/Contact"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getContactInfoForPhoneNumber(xxxxxxxx) returned NULL cursor! contact uri used "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v9

    .line 823
    .end local v3           #selection:Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #entry:Lcom/android/mms/data/Contact;
    :goto_0
    return-object v0

    .line 758
    .restart local v10       #m:Ljava/util/regex/Matcher;
    :cond_2
    new-instance v0, Lcom/android/mms/data/Contact;

    invoke-direct {v0, p1, v1}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    goto :goto_0

    .line 791
    .end local v10           #m:Ljava/util/regex/Matcher;
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v9       #entry:Lcom/android/mms/data/Contact;
    :cond_3
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 792
    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 793
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/mms/data/Contact;->access$802(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 794
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/mms/data/Contact;->access$602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 795
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v9, v0, v1}, Lcom/android/mms/data/Contact;->access$902(Lcom/android/mms/data/Contact;J)J

    .line 796
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/data/Contact$ContactsCache;->getPresenceIconResourceId(I)I

    move-result v0

    invoke-static {v9, v0}, Lcom/android/mms/data/Contact;->access$1002(Lcom/android/mms/data/Contact;I)I

    .line 798
    const/4 v0, 0x5

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/mms/data/Contact;->access$1302(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 803
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 805
    :try_start_2
    invoke-direct {p0, v9}, Lcom/android/mms/data/Contact$ContactsCache;->loadAvatarData(Lcom/android/mms/data/Contact;)[B

    move-result-object v8

    .line 807
    .local v8, data:[B
    monitor-enter v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 808
    :try_start_3
    invoke-static {v9, v8}, Lcom/android/mms/data/Contact;->access$1102(Lcom/android/mms/data/Contact;[B)[B

    .line 809
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 820
    .end local v8           #data:[B
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v9

    .line 823
    goto :goto_0

    .line 803
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 820
    .end local v9           #entry:Lcom/android/mms/data/Contact;
    :catchall_1
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 809
    .restart local v8       #data:[B
    .restart local v9       #entry:Lcom/android/mms/data/Contact;
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0

    .line 816
    .end local v8           #data:[B
    :cond_4
    const-string v0, "didn` t find set number to backup"

    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$000(Ljava/lang/String;)V

    .line 817
    new-instance v9, Lcom/android/mms/data/Contact;

    .end local v9           #entry:Lcom/android/mms/data/Contact;
    const/4 v0, 0x0

    invoke-direct {v9, v6, v0}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .restart local v9       #entry:Lcom/android/mms/data/Contact;
    goto :goto_1
.end method

.method private getPresenceIconResourceId(I)I
    .locals 1
    .parameter "presence"

    .prologue
    .line 912
    if-eqz p1, :cond_0

    .line 913
    invoke-static {p1}, Landroid/provider/ContactsContract$Presence;->getPresenceIconResourceId(I)I

    move-result v0

    .line 916
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private key(Ljava/lang/String;Ljava/nio/CharBuffer;)Ljava/lang/String;
    .locals 4
    .parameter "phoneNumber"
    .parameter "keyBuffer"

    .prologue
    .line 977
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 978
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->mark()Ljava/nio/Buffer;

    .line 980
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 981
    .local v1, position:I
    const/4 v2, 0x0

    .line 982
    .local v2, resultCount:I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 983
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 984
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 985
    invoke-virtual {p2, v0}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 986
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 991
    .end local v0           #c:C
    :cond_1
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->reset()Ljava/nio/Buffer;

    .line 992
    if-lez v2, :cond_2

    .line 993
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 996
    :goto_0
    return-object v3

    :cond_2
    move-object v3, p1

    goto :goto_0
.end method

.method private loadAvatarData(Lcom/android/mms/data/Contact;)[B
    .locals 7
    .parameter "entry"

    .prologue
    .line 879
    const/4 v2, 0x0

    .line 882
    .local v2, data:[B
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->hasAvatarData()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 883
    :cond_0
    const/4 v3, 0x0

    .line 907
    :goto_0
    return-object v3

    .line 886
    :cond_1
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 888
    .local v1, contactUri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 892
    .local v0, avatarDataStream:Ljava/io/InputStream;
    if-eqz v0, :cond_2

    .line 893
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v2, v3, [B

    .line 894
    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    :cond_2
    if-eqz v0, :cond_3

    .line 901
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_3
    :goto_1
    move-object v3, v2

    .line 907
    goto :goto_0

    .line 896
    :catch_0
    move-exception v3

    .line 900
    if-eqz v0, :cond_3

    .line 901
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 903
    :catch_1
    move-exception v3

    goto :goto_1

    .line 899
    :catchall_0
    move-exception v3

    .line 900
    if-eqz v0, :cond_4

    .line 901
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 904
    :cond_4
    :goto_2
    throw v3

    .line 903
    :catch_2
    move-exception v3

    goto :goto_1

    :catch_3
    move-exception v4

    goto :goto_2
.end method

.method private updateContact(Lcom/android/mms/data/Contact;Z)V
    .locals 6
    .parameter "c"
    .parameter "isIdBase"

    .prologue
    .line 641
    if-nez p1, :cond_0

    .line 703
    :goto_0
    return-void

    .line 645
    :cond_0
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isNumberCanAddToContact(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 650
    monitor-enter p1

    .line 651
    const/4 v4, 0x0

    :try_start_0
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$302(Lcom/android/mms/data/Contact;Z)Z

    .line 652
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 653
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 657
    :cond_1
    const/4 v0, 0x0

    .line 658
    .local v0, entry:Lcom/android/mms/data/Contact;
    if-eqz p2, :cond_3

    .line 659
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfo(J)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 663
    :goto_1
    monitor-enter p1

    .line 664
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/android/mms/data/Contact$ContactsCache;->contactChanged(Lcom/android/mms/data/Contact;Lcom/android/mms/data/Contact;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 665
    const-string v4, "Mms:app"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 666
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateContact: contact changed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$600(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/data/Contact;->access$000(Ljava/lang/String;)V

    .line 669
    :cond_2
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1202(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 670
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$802(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 671
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/android/mms/data/Contact;->access$902(Lcom/android/mms/data/Contact;J)J

    .line 672
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)I

    move-result v4

    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1002(Lcom/android/mms/data/Contact;I)I

    .line 673
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1302(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 674
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1100(Lcom/android/mms/data/Contact;)[B

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1102(Lcom/android/mms/data/Contact;[B)[B

    .line 678
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isLocalNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 679
    iget-object v4, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    const v5, 0x7f090159

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 683
    :goto_2
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1400(Lcom/android/mms/data/Contact;)V

    .line 689
    invoke-static {}, Lcom/android/mms/data/Contact;->access$1500()Ljava/util/HashSet;

    move-result-object v4

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 690
    :try_start_2
    invoke-static {}, Lcom/android/mms/data/Contact;->access$1500()Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 691
    .local v2, iterator:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/mms/data/Contact$UpdateListener;>;"
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 692
    :try_start_3
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact$UpdateListener;

    .line 694
    .local v3, l:Lcom/android/mms/data/Contact$UpdateListener;
    invoke-interface {v3, p1}, Lcom/android/mms/data/Contact$UpdateListener;->onUpdate(Lcom/android/mms/data/Contact;)V

    goto :goto_3

    .line 702
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #iterator:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/mms/data/Contact$UpdateListener;>;"
    .end local v3           #l:Lcom/android/mms/data/Contact$UpdateListener;
    :catchall_1
    move-exception v4

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 661
    :cond_3
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfo(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v0

    goto/16 :goto_1

    .line 681
    :cond_4
    :try_start_4
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$600(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 691
    :catchall_2
    move-exception v5

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v5

    .line 697
    :cond_5
    monitor-enter p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 698
    const/4 v4, 0x0

    :try_start_7
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$302(Lcom/android/mms/data/Contact;Z)Z

    .line 699
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 700
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 701
    :try_start_8
    invoke-static {p1}, Lcom/android/mms/data/RecipientIdCache;->updateNumber(Lcom/android/mms/data/Contact;)V

    .line 702
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0

    .line 700
    :catchall_3
    move-exception v4

    :try_start_9
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1056
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 7
    .parameter "numberOrEmail"

    .prologue
    .line 1006
    monitor-enter p0

    .line 1009
    :try_start_0
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const/4 v6, 0x1

    move v3, v6

    .line 1011
    .local v3, isNotRegularPhoneNumber:Z
    :goto_0
    if-eqz v3, :cond_2

    move-object v4, p1

    .line 1014
    .local v4, key:Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1015
    .local v1, candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    if-eqz v1, :cond_5

    .line 1016
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1017
    .local v5, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v5, :cond_6

    .line 1018
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1019
    .local v0, c:Lcom/android/mms/data/Contact;
    if-eqz v3, :cond_3

    .line 1020
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1021
    monitor-exit p0

    .line 1036
    .end local v2           #i:I
    .end local v5           #length:I
    :goto_3
    return-object v0

    .line 1009
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v1           #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .end local v3           #isNotRegularPhoneNumber:Z
    .end local v4           #key:Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    move v3, v6

    goto :goto_0

    .line 1011
    .restart local v3       #isNotRegularPhoneNumber:Z
    :cond_2
    sget-object v6, Lcom/android/mms/data/Contact$ContactsCache;->sStaticKeyBuffer:Ljava/nio/CharBuffer;

    invoke-direct {p0, p1, v6}, Lcom/android/mms/data/Contact$ContactsCache;->key(Ljava/lang/String;Ljava/nio/CharBuffer;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    goto :goto_1

    .line 1024
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    .restart local v1       #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .restart local v2       #i:I
    .restart local v4       #key:Ljava/lang/String;
    .restart local v5       #length:I
    :cond_3
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1025
    monitor-exit p0

    goto :goto_3

    .line 1037
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v1           #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .end local v2           #i:I
    .end local v3           #isNotRegularPhoneNumber:Z
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #length:I
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1017
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    .restart local v1       #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .restart local v2       #i:I
    .restart local v3       #isNotRegularPhoneNumber:Z
    .restart local v4       #key:Ljava/lang/String;
    .restart local v5       #length:I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1030
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v2           #i:I
    .end local v5           #length:I
    :cond_5
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1032
    .restart local v1       #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    iget-object v6, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    :cond_6
    new-instance v0, Lcom/android/mms/data/Contact;

    const/4 v6, 0x0

    invoke-direct {v0, p1, v6}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    .line 1035
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1036
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;
    .locals 6
    .parameter "number"
    .parameter "canBlock"

    .prologue
    .line 534
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 535
    const-string p1, ""

    .line 543
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 544
    .local v1, contact:Lcom/android/mms/data/Contact;
    const/4 v2, 0x0

    .line 546
    .local v2, r:Ljava/lang/Runnable;
    monitor-enter v1

    .line 549
    :goto_0
    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {v1}, Lcom/android/mms/data/Contact;->access$300(Lcom/android/mms/data/Contact;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 551
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 552
    :catch_0
    move-exception v4

    goto :goto_0

    .line 559
    :cond_1
    :try_start_2
    invoke-static {v1}, Lcom/android/mms/data/Contact;->access$400(Lcom/android/mms/data/Contact;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v1}, Lcom/android/mms/data/Contact;->access$300(Lcom/android/mms/data/Contact;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 560
    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/android/mms/data/Contact;->access$402(Lcom/android/mms/data/Contact;Z)Z

    .line 562
    const-string v4, "Mms:app"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 563
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "async update for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " canBlock: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isStale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/android/mms/data/Contact;->access$400(Lcom/android/mms/data/Contact;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/data/Contact;->access$000(Ljava/lang/String;)V

    .line 567
    :cond_2
    move-object v0, v1

    .line 568
    .local v0, c:Lcom/android/mms/data/Contact;
    new-instance v3, Lcom/android/mms/data/Contact$ContactsCache$1;

    invoke-direct {v3, p0, v0}, Lcom/android/mms/data/Contact$ContactsCache$1;-><init>(Lcom/android/mms/data/Contact$ContactsCache;Lcom/android/mms/data/Contact;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 578
    .end local v2           #r:Ljava/lang/Runnable;
    .local v3, r:Ljava/lang/Runnable;
    const/4 v4, 0x1

    :try_start_3
    invoke-static {v1, v4}, Lcom/android/mms/data/Contact;->access$302(Lcom/android/mms/data/Contact;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v3

    .line 580
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v3           #r:Ljava/lang/Runnable;
    .restart local v2       #r:Ljava/lang/Runnable;
    :cond_3
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 583
    if-eqz v2, :cond_4

    .line 584
    if-eqz p2, :cond_5

    .line 585
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 590
    :cond_4
    :goto_1
    return-object v1

    .line 580
    :catchall_0
    move-exception v4

    :goto_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4

    .line 587
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/mms/data/Contact$ContactsCache;->pushTask(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 580
    .end local v2           #r:Ljava/lang/Runnable;
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    .restart local v3       #r:Ljava/lang/Runnable;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #r:Ljava/lang/Runnable;
    .restart local v2       #r:Ljava/lang/Runnable;
    goto :goto_2
.end method

.method public getContactInfo(J)Lcom/android/mms/data/Contact;
    .locals 1
    .parameter "id"

    .prologue
    .line 726
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/data/Contact$ContactsCache;->queryContactInfoById(J)Lcom/android/mms/data/Contact;

    move-result-object v0

    return-object v0
.end method

.method public getContactInfo(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 1
    .parameter "numberOrEmail"

    .prologue
    .line 718
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfoForEmailAddress(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 721
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v0

    goto :goto_0
.end method

.method invalidate()V
    .locals 5

    .prologue
    .line 1043
    monitor-enter p0

    .line 1044
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1045
    .local v0, alc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 1046
    .local v1, c:Lcom/android/mms/data/Contact;
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1047
    const/4 v4, 0x1

    :try_start_1
    invoke-static {v1, v4}, Lcom/android/mms/data/Contact;->access$402(Lcom/android/mms/data/Contact;Z)Z

    .line 1048
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4

    .line 1051
    .end local v0           #alc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .end local v1           #c:Lcom/android/mms/data/Contact;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    :cond_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1052
    return-void
.end method

.method public pushTask(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mTaskQueue:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->push(Ljava/lang/Runnable;)V

    .line 529
    return-void
.end method

.method public queryContactInfoById(J)Lcom/android/mms/data/Contact;
    .locals 8
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 832
    new-instance v7, Lcom/android/mms/data/Contact;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v7, v0, v3}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/Long;Lcom/android/mms/data/Contact$1;)V

    .line 836
    .local v7, entry:Lcom/android/mms/data/Contact;
    sget-object v0, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 838
    .local v1, Uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 845
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 846
    const-string v0, "Mms/Contact"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryContactInfoById("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") returned NULL cursor!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " contact uri used "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :goto_0
    return-object v7

    .line 852
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 853
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$802(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 854
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 856
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$1202(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 857
    invoke-static {v7}, Lcom/android/mms/data/Contact;->access$600(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/data/Contact;->formatNameAndNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$1802(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 858
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/data/Contact$ContactsCache;->getPresenceIconResourceId(I)I

    move-result v0

    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$1002(Lcom/android/mms/data/Contact;I)I

    .line 860
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$1302(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 862
    invoke-direct {p0, v7}, Lcom/android/mms/data/Contact$ContactsCache;->loadAvatarData(Lcom/android/mms/data/Contact;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 865
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method
