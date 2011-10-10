.class public Lcom/android/mms/ui/DeliveryReadReport;
.super Ljava/lang/Object;
.source "DeliveryReadReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;,
        Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;
    }
.end annotation


# static fields
.field static final MMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

.field static final MMS_REQUEST_PROJECTION:[Ljava/lang/String;

.field static final SMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, "address"

    .line 27
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v7, v0, v3

    const-string v1, "d_rpt"

    aput-object v1, v0, v4

    const-string v1, "rr"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mms/ui/DeliveryReadReport;->MMS_REQUEST_PROJECTION:[Ljava/lang/String;

    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v7, v0, v3

    const-string v1, "delivery_status"

    aput-object v1, v0, v4

    const-string v1, "delivery_date"

    aput-object v1, v0, v5

    const-string v1, "read_status"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "read_date"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/DeliveryReadReport;->MMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    .line 41
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v7, v0, v3

    const-string v1, "status"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mms/ui/DeliveryReadReport;->SMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    return-void
.end method

.method private static getMmsReportRequests(Landroid/content/Context;J)Ljava/util/List;
    .locals 9
    .parameter "context"
    .parameter "msgID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 260
    sget-object v0, Landroid/provider/Telephony$Mms;->REPORT_REQUEST_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 262
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/ui/DeliveryReadReport;->MMS_REQUEST_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 265
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    move-object v0, v4

    .line 283
    :goto_0
    return-object v0

    .line 270
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_1

    .line 283
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v4

    goto :goto_0

    .line 274
    :cond_1
    :try_start_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v8, reqList:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;>;"
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    new-instance v0, Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {v0, v1, v3, v4}, Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;-><init>(Ljava/lang/String;II)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 283
    .end local v8           #reqList:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v8       #reqList:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;>;"
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    goto :goto_0
.end method

.method private static getMmsReportStatus(Landroid/content/Context;J)Ljava/util/Map;
    .locals 11
    .parameter "context"
    .parameter "msgID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    sget-object v0, Landroid/provider/Telephony$Mms;->REPORT_STATUS_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .end local p1
    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 290
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/ui/DeliveryReadReport;->MMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 293
    .local p1, c:Landroid/database/Cursor;
    if-nez p1, :cond_0

    .line 294
    const/4 p0, 0x0

    .line 320
    .end local p0
    :goto_0
    return-object p0

    .line 298
    .restart local p0
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result p2

    if-gtz p2, :cond_1

    .line 299
    const/4 p0, 0x0

    .line 320
    .end local p0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 302
    .restart local p0
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 304
    .local v0, statusMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;>;"
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 305
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 306
    .local p2, recipient:Ljava/lang/String;
    invoke-static {p2}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p2}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 310
    :goto_2
    new-instance v3, Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    move-object v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;-><init>(Landroid/content/Context;IIJJ)V

    .line 316
    .local v3, status:Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;
    invoke-interface {v0, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 320
    .end local v0           #statusMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;>;"
    .end local v3           #status:Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;
    .end local p2           #recipient:Ljava/lang/String;
    :catchall_0
    move-exception p0

    .end local p0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p0

    .line 306
    .restart local v0       #statusMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;>;"
    .restart local p0
    .restart local p2       #recipient:Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object p2

    goto :goto_2

    .line 320
    .end local p2           #recipient:Ljava/lang/String;
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    move-object p0, v0

    goto :goto_0
.end method

.method public static getMmsReportText(Landroid/content/Context;J)Ljava/lang/String;
    .locals 13
    .parameter "context"
    .parameter "msgID"

    .prologue
    .line 107
    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/DeliveryReadReport;->getMmsReportRequests(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v2

    .line 109
    .local v2, reportReqs:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .local v0, deliveryReport:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v3, readReport:Ljava/lang/StringBuilder;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    const v1, 0x7f0900f0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const/16 v1, 0xa

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    const v1, 0x7f0900f1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 120
    :cond_0
    const p1, 0x7f0900ed

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local p1
    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const p1, 0x7f0900ed

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 256
    .end local v2           #reportReqs:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;>;"
    :goto_0
    return-object p0

    .line 125
    .restart local v2       #reportReqs:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;>;"
    .restart local p0
    .restart local p1
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/DeliveryReadReport;->getMmsReportStatus(Landroid/content/Context;J)Ljava/util/Map;

    move-result-object v8

    .line 127
    .local v8, reportStatus:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;>;"
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .end local p1
    .local p2, deliveryReportTemp:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v4, readReportTemp:Ljava/lang/StringBuilder;
    const/4 p1, 0x0

    .line 131
    .local p1, deliveryReportCount:I
    const/4 v1, 0x0

    .line 133
    .local v1, readReportCount:I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    move-object v5, v4

    .end local v4           #readReportTemp:Ljava/lang/StringBuilder;
    .local v5, readReportTemp:Ljava/lang/StringBuilder;
    move v4, v1

    .end local v1           #readReportCount:I
    .local v4, readReportCount:I
    move-object v1, p2

    .end local p2           #deliveryReportTemp:Ljava/lang/StringBuilder;
    .local v1, deliveryReportTemp:Ljava/lang/StringBuilder;
    move p2, p1

    .end local p1           #deliveryReportCount:I
    .local p2, deliveryReportCount:I
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;

    .line 134
    .local v7, reportReq:Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;
    if-nez v7, :cond_3

    .line 135
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 136
    .local p1, s:Ljava/lang/StringBuffer;
    const p2, 0x7f0900ed

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local p2           #deliveryReportCount:I
    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const p2, 0x7f0900ed

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 142
    .end local p1           #s:Ljava/lang/StringBuffer;
    .restart local p0
    .restart local p2       #deliveryReportCount:I
    :cond_3
    if-nez v8, :cond_6

    .line 143
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 145
    .restart local p1       #s:Ljava/lang/StringBuffer;
    invoke-virtual {v7}, Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;->isDeliveryReportRequested()Z

    move-result p2

    .end local p2           #deliveryReportCount:I
    if-eqz p2, :cond_4

    .line 146
    const p2, 0x7f0900ef

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :goto_2
    invoke-virtual {v7}, Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;->isReadReportRequested()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 150
    const p2, 0x7f0900ef

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 148
    .restart local p0
    :cond_4
    const p2, 0x7f0900ed

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 152
    :cond_5
    const p2, 0x7f0900ed

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 156
    .end local p1           #s:Ljava/lang/StringBuffer;
    .restart local p0
    .restart local p2       #deliveryReportCount:I
    :cond_6
    invoke-virtual {v7}, Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;->getRecipient()Ljava/lang/String;

    move-result-object p1

    .line 157
    .local p1, recipient:Ljava/lang/String;
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {p1}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .end local p1           #recipient:Ljava/lang/String;
    move-object v6, p1

    .line 158
    .local v6, recipient:Ljava/lang/String;
    :goto_4
    invoke-static {v8, v6}, Lcom/android/mms/ui/DeliveryReadReport;->queryStatusByRecipient(Ljava/util/Map;Ljava/lang/String;)Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;

    move-result-object v9

    .line 160
    .local v9, status:Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;
    if-nez v9, :cond_9

    .line 161
    if-eqz v1, :cond_7

    .line 162
    const/16 p1, 0xa

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string p1, " - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const p1, 0x7f0900ef

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_7
    if-eqz v5, :cond_2

    .line 168
    const/16 p1, 0xa

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string p1, " - "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const p1, 0x7f0900ef

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 157
    .end local v6           #recipient:Ljava/lang/String;
    .end local v9           #status:Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;
    .restart local p1       #recipient:Ljava/lang/String;
    :cond_8
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    goto :goto_4

    .line 176
    .end local p1           #recipient:Ljava/lang/String;
    .restart local v6       #recipient:Ljava/lang/String;
    .restart local v9       #status:Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;
    :cond_9
    if-eqz v5, :cond_a

    .line 177
    invoke-virtual {v7}, Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;->isReadReportRequested()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 178
    invoke-virtual {v9}, Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;->getReadReportDate()Ljava/lang/String;

    move-result-object p1

    .line 179
    .local p1, readDate:Ljava/lang/String;
    const/16 v10, 0xa

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string v10, " - "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget v10, v9, Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;->readStatus:I

    packed-switch v10, :pswitch_data_0

    .line 192
    const p1, 0x7f0900ef

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local p1           #readDate:Ljava/lang/String;
    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p1, v4

    .end local v4           #readReportCount:I
    .local p1, readReportCount:I
    :goto_5
    move v4, p1

    .line 201
    .end local p1           #readReportCount:I
    .restart local v4       #readReportCount:I
    :cond_a
    :goto_6
    if-eqz v1, :cond_12

    .line 202
    invoke-virtual {v7}, Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;->isDeliveryReportRequested()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 203
    invoke-virtual {v9}, Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;->getDeliveryReportDate()Ljava/lang/String;

    move-result-object p1

    .line 204
    .local p1, deliveryDate:Ljava/lang/String;
    const/16 v7, 0xa

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    .end local v7           #reportReq:Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const-string v6, " - "

    .end local v6           #recipient:Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    iget v6, v9, Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;->deliveryStatus:I

    sparse-switch v6, :sswitch_data_0

    .line 225
    const p1, 0x7f0900e8

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local p1           #deliveryDate:Ljava/lang/String;
    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    add-int/lit8 p1, p2, 0x1

    .end local p2           #deliveryReportCount:I
    .local p1, deliveryReportCount:I
    :goto_7
    move-object p2, v1

    .end local v1           #deliveryReportTemp:Ljava/lang/StringBuilder;
    .local p2, deliveryReportTemp:Ljava/lang/StringBuilder;
    :goto_8
    move-object v1, p2

    .end local p2           #deliveryReportTemp:Ljava/lang/StringBuilder;
    .restart local v1       #deliveryReportTemp:Ljava/lang/StringBuilder;
    move p2, p1

    .line 234
    .end local p1           #deliveryReportCount:I
    .local p2, deliveryReportCount:I
    goto/16 :goto_1

    .line 184
    .restart local v6       #recipient:Ljava/lang/String;
    .restart local v7       #reportReq:Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;
    .local p1, readDate:Ljava/lang/String;
    :pswitch_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f0900e6

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #readDate:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    add-int/lit8 p1, v4, 0x1

    .line 186
    .end local v4           #readReportCount:I
    .local p1, readReportCount:I
    goto :goto_5

    .line 188
    .restart local v4       #readReportCount:I
    .local p1, readDate:Ljava/lang/String;
    :pswitch_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f0900e9

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #readDate:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    add-int/lit8 p1, v4, 0x1

    .line 190
    .end local v4           #readReportCount:I
    .local p1, readReportCount:I
    goto :goto_5

    .line 196
    .end local p1           #readReportCount:I
    .restart local v4       #readReportCount:I
    :cond_b
    const/4 p1, 0x0

    .line 197
    .end local v5           #readReportTemp:Ljava/lang/StringBuilder;
    .local p1, readReportTemp:Ljava/lang/StringBuilder;
    const v5, 0x7f0900ed

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, p1

    .end local p1           #readReportTemp:Ljava/lang/StringBuilder;
    .restart local v5       #readReportTemp:Ljava/lang/StringBuilder;
    goto :goto_6

    .line 209
    .end local v6           #recipient:Ljava/lang/String;
    .end local v7           #reportReq:Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;
    .local p1, deliveryDate:Ljava/lang/String;
    :sswitch_0
    const p1, 0x7f0900ef

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local p1           #deliveryDate:Ljava/lang/String;
    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p1, p2

    .line 210
    .end local p2           #deliveryReportCount:I
    .local p1, deliveryReportCount:I
    goto :goto_7

    .line 213
    .local p1, deliveryDate:Ljava/lang/String;
    .restart local p2       #deliveryReportCount:I
    :sswitch_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0900e7

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #deliveryDate:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    add-int/lit8 p1, p2, 0x1

    .line 215
    .end local p2           #deliveryReportCount:I
    .local p1, deliveryReportCount:I
    goto :goto_7

    .line 217
    .local p1, deliveryDate:Ljava/lang/String;
    .restart local p2       #deliveryReportCount:I
    :sswitch_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0900ea

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #deliveryDate:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    add-int/lit8 p1, p2, 0x1

    .line 219
    .end local p2           #deliveryReportCount:I
    .local p1, deliveryReportCount:I
    goto/16 :goto_7

    .line 221
    .local p1, deliveryDate:Ljava/lang/String;
    .restart local p2       #deliveryReportCount:I
    :sswitch_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f09013d

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #deliveryDate:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    add-int/lit8 p1, p2, 0x1

    .line 223
    .end local p2           #deliveryReportCount:I
    .local p1, deliveryReportCount:I
    goto/16 :goto_7

    .line 230
    .end local p1           #deliveryReportCount:I
    .restart local v6       #recipient:Ljava/lang/String;
    .restart local v7       #reportReq:Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;
    .restart local p2       #deliveryReportCount:I
    :cond_c
    const/4 p1, 0x0

    .line 231
    .end local v1           #deliveryReportTemp:Ljava/lang/StringBuilder;
    .local p1, deliveryReportTemp:Ljava/lang/StringBuilder;
    const v1, 0x7f0900ed

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v12, p2

    .end local p2           #deliveryReportCount:I
    .local v12, deliveryReportCount:I
    move-object p2, p1

    .end local p1           #deliveryReportTemp:Ljava/lang/StringBuilder;
    .local p2, deliveryReportTemp:Ljava/lang/StringBuilder;
    move p1, v12

    .end local v12           #deliveryReportCount:I
    .local p1, deliveryReportCount:I
    goto/16 :goto_8

    .line 235
    .end local v6           #recipient:Ljava/lang/String;
    .end local v7           #reportReq:Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;
    .end local v9           #status:Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;
    .end local p1           #deliveryReportCount:I
    .restart local v1       #deliveryReportTemp:Ljava/lang/StringBuilder;
    .local p2, deliveryReportCount:I
    :cond_d
    if-nez p2, :cond_11

    if-eqz v1, :cond_11

    .line 236
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f0900ef

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local p2           #deliveryReportCount:I
    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 237
    const p1, 0x7f0900ef

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const/4 p1, 0x0

    .line 242
    .end local v1           #deliveryReportTemp:Ljava/lang/StringBuilder;
    .local p1, deliveryReportTemp:Ljava/lang/StringBuilder;
    :goto_9
    if-nez v4, :cond_10

    if-eqz v5, :cond_10

    .line 243
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const v1, 0x7f0900ef

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 244
    const p2, 0x7f0900ef

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const/4 p0, 0x0

    .line 249
    .end local v5           #readReportTemp:Ljava/lang/StringBuilder;
    .local p0, readReportTemp:Ljava/lang/StringBuilder;
    :goto_a
    if-eqz p0, :cond_e

    .line 250
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #readReportTemp:Ljava/lang/StringBuilder;
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :cond_e
    if-eqz p1, :cond_f

    .line 253
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .restart local v5       #readReportTemp:Ljava/lang/StringBuilder;
    .local p0, context:Landroid/content/Context;
    :cond_10
    move-object p0, v5

    .end local v5           #readReportTemp:Ljava/lang/StringBuilder;
    .local p0, readReportTemp:Ljava/lang/StringBuilder;
    goto :goto_a

    .end local p1           #deliveryReportTemp:Ljava/lang/StringBuilder;
    .restart local v1       #deliveryReportTemp:Ljava/lang/StringBuilder;
    .restart local v5       #readReportTemp:Ljava/lang/StringBuilder;
    .local p0, context:Landroid/content/Context;
    :cond_11
    move-object p1, v1

    .end local v1           #deliveryReportTemp:Ljava/lang/StringBuilder;
    .restart local p1       #deliveryReportTemp:Ljava/lang/StringBuilder;
    goto :goto_9

    .end local p1           #deliveryReportTemp:Ljava/lang/StringBuilder;
    .restart local v1       #deliveryReportTemp:Ljava/lang/StringBuilder;
    .restart local v6       #recipient:Ljava/lang/String;
    .restart local v7       #reportReq:Lcom/android/mms/ui/DeliveryReadReport$MmsReportRequest;
    .restart local v9       #status:Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;
    .restart local p2       #deliveryReportCount:I
    :cond_12
    move p1, p2

    .end local p2           #deliveryReportCount:I
    .local p1, deliveryReportCount:I
    move-object p2, v1

    .end local v1           #deliveryReportTemp:Ljava/lang/StringBuilder;
    .local p2, deliveryReportTemp:Ljava/lang/StringBuilder;
    goto/16 :goto_8

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 207
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x80 -> :sswitch_3
        0x81 -> :sswitch_1
        0x82 -> :sswitch_2
        0x86 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getSmsDeliveryReportText(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "msgID"

    .prologue
    .line 61
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .local v7, deliveryReport:Ljava/lang/StringBuilder;
    const/16 v0, 0xa

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    const v0, 0x7f0900f0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v0, ": "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, selection:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/ui/DeliveryReadReport;->SMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 68
    .local p1, c:Landroid/database/Cursor;
    if-nez p1, :cond_0

    .line 69
    const/4 p0, 0x0

    .line 103
    .end local p0
    :goto_0
    return-object p0

    .line 73
    .restart local p0
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result p2

    if-nez p2, :cond_2

    .line 74
    :cond_1
    const/4 p0, 0x0

    .line 101
    .end local p0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 77
    .restart local p0
    :cond_2
    const/4 p2, 0x2

    :try_start_1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 79
    .local v0, deliveryDate:Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-eqz p2, :cond_3

    .line 80
    new-instance p2, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .end local v0           #deliveryDate:Ljava/lang/Long;
    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 81
    .local p2, date:Ljava/util/Date;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const/4 p2, 0x1

    invoke-static {p0, v1, v2, p2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    .end local p2           #date:Ljava/util/Date;
    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 86
    .local p2, deliveryDateStr:Ljava/lang/String;
    :goto_1
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 89
    .local v0, deliveryStatus:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 90
    const p2, 0x7f0900ed

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local p2           #deliveryDateStr:Ljava/lang/String;
    move-result-object p0

    .line 98
    .end local v0           #deliveryStatus:I
    .local p0, deliveryStr:Ljava/lang/String;
    :goto_2
    const/16 p2, 0xa

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #deliveryStr:Ljava/lang/String;
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 103
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 84
    .local v0, deliveryDate:Ljava/lang/Long;
    .local p0, context:Landroid/content/Context;
    :cond_3
    :try_start_2
    const-string p2, ""

    .restart local p2       #deliveryDateStr:Ljava/lang/String;
    goto :goto_1

    .line 91
    .local v0, deliveryStatus:I
    :cond_4
    const/16 v1, 0x40

    if-lt v0, v1, :cond_5

    .line 92
    const p2, 0x7f0900e8

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local p2           #deliveryDateStr:Ljava/lang/String;
    move-result-object p0

    .local p0, deliveryStr:Ljava/lang/String;
    goto :goto_2

    .line 93
    .local p0, context:Landroid/content/Context;
    .restart local p2       #deliveryDateStr:Ljava/lang/String;
    :cond_5
    const/16 v1, 0x20

    if-lt v0, v1, :cond_6

    .line 94
    const p2, 0x7f0900ef

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local p2           #deliveryDateStr:Ljava/lang/String;
    move-result-object p0

    .local p0, deliveryStr:Ljava/lang/String;
    goto :goto_2

    .line 96
    .local p0, context:Landroid/content/Context;
    .restart local p2       #deliveryDateStr:Ljava/lang/String;
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #deliveryStatus:I
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0900e7

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .end local p0           #context:Landroid/content/Context;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object p0

    .local p0, deliveryStr:Ljava/lang/String;
    goto :goto_2

    .line 101
    .end local p0           #deliveryStr:Ljava/lang/String;
    .end local p2           #deliveryDateStr:Ljava/lang/String;
    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p0
.end method

.method private static queryStatusByRecipient(Ljava/util/Map;Ljava/lang/String;)Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;
    .locals 5
    .parameter
    .parameter "recipient"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;"
        }
    .end annotation

    .prologue
    .local p0, status:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;>;"
    const/4 v4, 0x0

    .line 325
    if-nez p0, :cond_0

    move-object v3, v4

    .line 341
    .end local p0           #status:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;>;"
    :goto_0
    return-object v3

    .line 329
    .restart local p0       #status:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;>;"
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 330
    .local v2, recipientSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 331
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 332
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 333
    .local v1, r:Ljava/lang/String;
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 334
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 335
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #status:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;>;"
    check-cast p0, Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;

    move-object v3, p0

    goto :goto_0

    .line 337
    .restart local p0       #status:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;>;"
    :cond_2
    invoke-static {v1, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 338
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #status:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;>;"
    check-cast p0, Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;

    move-object v3, p0

    goto :goto_0

    .end local v1           #r:Ljava/lang/String;
    .restart local p0       #status:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;>;"
    :cond_3
    move-object v3, v4

    .line 341
    goto :goto_0
.end method
