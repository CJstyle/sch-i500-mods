.class public Lcom/android/mms/ui/DeliveryReportActivity;
.super Landroid/app/ListActivity;
.source "DeliveryReportActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;,
        Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    }
.end annotation


# static fields
.field static final MMS_REPORT_REQUEST_PROJECTION:[Ljava/lang/String;

.field static final MMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

.field static final SMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mMessageId:J

.field private mMessageType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v6, "address"

    .line 64
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v6, v0, v2

    const-string v1, "d_rpt"

    aput-object v1, v0, v3

    const-string v1, "rr"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/ui/DeliveryReportActivity;->MMS_REPORT_REQUEST_PROJECTION:[Ljava/lang/String;

    .line 70
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v6, v0, v2

    const-string v1, "delivery_status"

    aput-object v1, v0, v3

    const-string v1, "read_status"

    aput-object v1, v0, v4

    const-string v1, "report_date"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mms/ui/DeliveryReportActivity;->MMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    .line 77
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v6, v0, v2

    const-string v1, "status"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/ui/DeliveryReportActivity;->SMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 432
    return-void
.end method

.method private getMessageId(Landroid/os/Bundle;Landroid/content/Intent;)J
    .locals 6
    .parameter "icicle"
    .parameter "intent"

    .prologue
    const-wide/16 v3, 0x0

    const-string v5, "message_id"

    .line 141
    const-wide/16 v0, 0x0

    .line 143
    .local v0, msgId:J
    if-eqz p1, :cond_0

    .line 144
    const-string v2, "message_id"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 147
    :cond_0
    cmp-long v2, v0, v3

    if-nez v2, :cond_1

    .line 148
    const-string v2, "message_id"

    invoke-virtual {p2, v5, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 151
    :cond_1
    return-wide v0
.end method

.method private getMessageType(Landroid/os/Bundle;Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .parameter "icicle"
    .parameter "intent"

    .prologue
    const-string v2, "message_type"

    .line 155
    const/4 v0, 0x0

    .line 157
    .local v0, msgType:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 158
    const-string v1, "message_type"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    :cond_0
    if-nez v0, :cond_1

    .line 162
    const-string v1, "message_type"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    :cond_1
    return-object v0
.end method

.method private getMmsReportItems()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/DeliveryReportItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getMmsReportRequests()Ljava/util/List;

    move-result-object v10

    .line 295
    .local v10, reportReqs:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;>;"
    if-nez v10, :cond_0

    .line 296
    const/16 v16, 0x0

    .line 336
    :goto_0
    return-object v16

    .line 299
    :cond_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v16

    if-nez v16, :cond_1

    .line 300
    const/16 v16, 0x0

    goto :goto_0

    .line 303
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getMmsReportStatus()Ljava/util/Map;

    move-result-object v11

    .line 304
    .local v11, reportStatus:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v7, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;

    .line 306
    .local v9, reportReq:Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const v17, 0x7f0900ec

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x20

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/DeliveryReportActivity;->getMmsReportStatusText(Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 311
    .local v14, statusText:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;->getRecipient()Ljava/lang/String;

    move-result-object v8

    .line 312
    .local v8, recipient:Ljava/lang/String;
    invoke-static {v8}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-static {v8}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v8, v16

    .line 314
    :goto_2
    invoke-static {v11, v8}, Lcom/android/mms/ui/DeliveryReportActivity;->queryStatusByRecipient(Ljava/util/Map;Ljava/lang/String;)Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;

    move-result-object v13

    .line 316
    .local v13, status:Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    const-wide/16 v16, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 317
    .local v5, dateVal:Ljava/lang/Long;
    if-eqz v13, :cond_2

    .line 319
    invoke-virtual {v13}, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;->getReportDate()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 321
    :cond_2
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const v17, 0x7f09013c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 323
    .local v15, str:Ljava/lang/String;
    if-eqz v13, :cond_4

    const-wide/16 v16, 0x0

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v16, v16, v18

    if-eqz v16, :cond_4

    .line 325
    invoke-virtual {v13}, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;->getReportDate()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    mul-long v16, v16, v18

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v4

    .line 331
    .local v4, Val:Ljava/lang/String;
    :goto_3
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 332
    .local v12, s:Ljava/lang/StringBuffer;
    new-instance v16, Lcom/android/mms/ui/DeliveryReportItem;

    const v17, 0x7f0900eb

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const/16 v18, 0x20

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual {v9}, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;->getRecipient()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v14

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/ui/DeliveryReportItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 312
    .end local v4           #Val:Ljava/lang/String;
    .end local v5           #dateVal:Ljava/lang/Long;
    .end local v12           #s:Ljava/lang/StringBuffer;
    .end local v13           #status:Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    .end local v15           #str:Ljava/lang/String;
    :cond_3
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v8, v16

    goto/16 :goto_2

    .line 329
    .restart local v5       #dateVal:Ljava/lang/Long;
    .restart local v13       #status:Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    .restart local v15       #str:Ljava/lang/String;
    :cond_4
    const-string v4, "  - "

    .restart local v4       #Val:Ljava/lang/String;
    goto :goto_3

    .end local v4           #Val:Ljava/lang/String;
    .end local v5           #dateVal:Ljava/lang/Long;
    .end local v8           #recipient:Ljava/lang/String;
    .end local v9           #reportReq:Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;
    .end local v13           #status:Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    .end local v14           #statusText:Ljava/lang/String;
    .end local v15           #str:Ljava/lang/String;
    :cond_5
    move-object/from16 v16, v7

    .line 336
    goto/16 :goto_0
.end method

.method private getMmsReportRequests()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 371
    sget-object v0, Landroid/provider/Telephony$Mms;->REPORT_REQUEST_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/android/mms/ui/DeliveryReportActivity;->mMessageId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 373
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/ui/DeliveryReportActivity;->MMS_REPORT_REQUEST_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 376
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    move-object v0, v4

    .line 394
    :goto_0
    return-object v0

    .line 381
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_1

    .line 394
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v4

    goto :goto_0

    .line 385
    :cond_1
    :try_start_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v8, reqList:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;>;"
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 387
    new-instance v0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {v0, v1, v3, v4}, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;-><init>(Ljava/lang/String;II)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 394
    .end local v8           #reqList:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v8       #reqList:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;>;"
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    goto :goto_0
.end method

.method private getMmsReportStatus()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 340
    sget-object v0, Landroid/provider/Telephony$Mms;->REPORT_STATUS_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/android/mms/ui/DeliveryReportActivity;->mMessageId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 342
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/ui/DeliveryReportActivity;->MMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 345
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    move-object v0, v4

    .line 366
    :goto_0
    return-object v0

    .line 350
    :cond_0
    :try_start_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 353
    .local v10, statusMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 354
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 355
    .local v8, recipient:Ljava/lang/String;
    invoke-static {v8}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v8}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 358
    :goto_2
    new-instance v9, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v3, 0x3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-direct {v9, v0, v1, v3, v4}, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;-><init>(IIJ)V

    .line 362
    .local v9, status:Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    invoke-interface {v10, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 366
    .end local v8           #recipient:Ljava/lang/String;
    .end local v9           #status:Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    .end local v10           #statusMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 355
    .restart local v8       #recipient:Ljava/lang/String;
    .restart local v10       #statusMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    :cond_1
    :try_start_1
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    move-object v8, v0

    goto :goto_2

    .line 366
    .end local v8           #recipient:Ljava/lang/String;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v10

    goto :goto_0
.end method

.method private getMmsReportStatusText(Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, reportStatus:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    const v3, 0x7f0900e5

    .line 227
    if-nez p2, :cond_0

    .line 229
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 265
    :goto_0
    return-object v2

    .line 232
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;->getRecipient()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, recipient:Ljava/lang/String;
    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 235
    :goto_1
    invoke-static {p2, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->queryStatusByRecipient(Ljava/util/Map;Ljava/lang/String;)Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;

    move-result-object v1

    .line 236
    .local v1, status:Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    if-nez v1, :cond_2

    .line 238
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 233
    .end local v1           #status:Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    :cond_1
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_1

    .line 241
    .restart local v1       #status:Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    :cond_2
    invoke-virtual {p1}, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportRequest;->isReadReportRequested()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 242
    iget v2, v1, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;->readStatus:I

    if-eqz v2, :cond_3

    .line 243
    iget v2, v1, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;->readStatus:I

    packed-switch v2, :pswitch_data_0

    .line 252
    :cond_3
    iget v2, v1, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;->deliveryStatus:I

    sparse-switch v2, :sswitch_data_0

    .line 265
    const v2, 0x7f0900e8

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 245
    :pswitch_0
    const v2, 0x7f0900e6

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 247
    :pswitch_1
    const v2, 0x7f0900e9

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 254
    :sswitch_0
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 257
    :sswitch_1
    const v2, 0x7f0900e7

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 259
    :sswitch_2
    const v2, 0x7f0900ea

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 262
    :sswitch_3
    const v2, 0x7f09013d

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 252
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x80 -> :sswitch_3
        0x81 -> :sswitch_1
        0x82 -> :sswitch_2
        0x86 -> :sswitch_1
    .end sparse-switch
.end method

.method private getReportItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/DeliveryReportItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/mms/ui/DeliveryReportActivity;->mMessageType:Ljava/lang/String;

    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getSmsReportItems()Ljava/util/List;

    move-result-object v0

    .line 172
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getMmsReportItems()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private getSmsReportItems()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/DeliveryReportItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/DeliveryReportActivity;->mMessageId:J

    move-wide v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 178
    .local v8, selection:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/mms/ui/DeliveryReportActivity;->SMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v10}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 180
    .local v12, c:Landroid/database/Cursor;
    if-nez v12, :cond_0

    .line 181
    const/4 v4, 0x0

    .line 220
    .end local v8           #selection:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 185
    .restart local v8       #selection:Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-gtz v4, :cond_1

    .line 186
    const/4 v4, 0x0

    .line 220
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 189
    :cond_1
    :try_start_1
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .end local v8           #selection:Ljava/lang/String;
    .local v15, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 195
    const/4 v4, 0x2

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 197
    .local v14, dateStr:Ljava/lang/Long;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f09013c

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 199
    .local v19, str:Ljava/lang/String;
    const-wide/16 v4, 0x0

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 201
    new-instance v13, Ljava/util/Date;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v13, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 202
    .local v13, date:Ljava/util/Date;
    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-wide v1, v4

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v11

    .line 208
    .end local v13           #date:Ljava/util/Date;
    .local v11, Val:Ljava/lang/String;
    :goto_2
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 209
    .local v16, s1:Ljava/lang/StringBuffer;
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 210
    .local v17, s2:Ljava/lang/StringBuffer;
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    .line 211
    .local v18, s3:Ljava/lang/StringBuffer;
    new-instance v4, Lcom/android/mms/ui/DeliveryReportItem;

    const v5, 0x7f0900eb

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0900ec

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Lcom/android/mms/ui/DeliveryReportActivity;->getSmsStatusText(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/android/mms/ui/DeliveryReportItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 220
    .end local v11           #Val:Ljava/lang/String;
    .end local v14           #dateStr:Ljava/lang/Long;
    .end local v15           #items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    .end local v16           #s1:Ljava/lang/StringBuffer;
    .end local v17           #s2:Ljava/lang/StringBuffer;
    .end local v18           #s3:Ljava/lang/StringBuffer;
    .end local v19           #str:Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v4

    .line 206
    .restart local v14       #dateStr:Ljava/lang/Long;
    .restart local v15       #items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    .restart local v19       #str:Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v11, "  - "
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v11       #Val:Ljava/lang/String;
    goto :goto_2

    .line 220
    .end local v11           #Val:Ljava/lang/String;
    .end local v14           #dateStr:Ljava/lang/Long;
    .end local v19           #str:Ljava/lang/String;
    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    move-object v4, v15

    goto/16 :goto_0
.end method

.method private getSmsStatusText(I)Ljava/lang/String;
    .locals 1
    .parameter "status"

    .prologue
    .line 399
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 401
    const v0, 0x7f0900e4

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 410
    :goto_0
    return-object v0

    .line 402
    :cond_0
    const/16 v0, 0x40

    if-lt p1, v0, :cond_1

    .line 404
    const v0, 0x7f0900e8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 405
    :cond_1
    const/16 v0, 0x20

    if-lt p1, v0, :cond_2

    .line 407
    const v0, 0x7f0900e5

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 410
    :cond_2
    const v0, 0x7f0900e7

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initListAdapter()V
    .locals 5

    .prologue
    const-string v4, ""

    .line 119
    invoke-direct {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getReportItems()Ljava/util/List;

    move-result-object v0

    .line 120
    .local v0, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    .restart local v0       #items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    new-instance v1, Lcom/android/mms/ui/DeliveryReportItem;

    const-string v2, ""

    const v2, 0x7f0900e4

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DeliveryReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v1, v4, v2, v4}, Lcom/android/mms/ui/DeliveryReportItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    const-string v1, "DeliveryReportActivity"

    const-string v2, "cursor == null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    new-instance v1, Lcom/android/mms/ui/DeliveryReportAdapter;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/ui/DeliveryReportAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DeliveryReportActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 126
    return-void
.end method

.method private initListView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 113
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 114
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030010

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 115
    .local v0, header:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v4, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 116
    return-void
.end method

.method private static queryStatusByRecipient(Ljava/util/Map;Ljava/lang/String;)Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
    .locals 5
    .parameter
    .parameter "recipient"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;"
        }
    .end annotation

    .prologue
    .local p0, status:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    const/4 v4, 0x0

    .line 272
    if-nez p0, :cond_0

    move-object v3, v4

    .line 290
    .end local p0           #status:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    :goto_0
    return-object v3

    .line 277
    .restart local p0       #status:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 278
    .local v2, recipientSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 279
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 280
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 281
    .local v1, r:Ljava/lang/String;
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 282
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 283
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #status:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    check-cast p0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;

    move-object v3, p0

    goto :goto_0

    .line 286
    .restart local p0       #status:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    :cond_2
    invoke-static {v1, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 287
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #status:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    check-cast p0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;

    move-object v3, p0

    goto :goto_0

    .end local v1           #r:Ljava/lang/String;
    .restart local p0       #status:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;>;"
    :cond_3
    move-object v3, v4

    .line 290
    goto :goto_0
.end method

.method private refreshDeliveryReport()V
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 136
    .local v0, list:Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 137
    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 138
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DeliveryReportActivity;->requestWindowFeature(I)Z

    .line 101
    const v1, 0x7f03000f

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DeliveryReportActivity;->setContentView(I)V

    .line 103
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 104
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->getMessageId(Landroid/os/Bundle;Landroid/content/Intent;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/mms/ui/DeliveryReportActivity;->mMessageId:J

    .line 105
    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/DeliveryReportActivity;->getMessageType(Landroid/os/Bundle;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/DeliveryReportActivity;->mMessageType:Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->initListView()V

    .line 108
    invoke-direct {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->initListAdapter()V

    .line 109
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 131
    invoke-direct {p0}, Lcom/android/mms/ui/DeliveryReportActivity;->refreshDeliveryReport()V

    .line 132
    return-void
.end method
