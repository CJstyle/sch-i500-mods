.class public Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;
.super Landroid/app/Activity;
.source "DetailViewActivity.java"


# static fields
.field public static final DETAIL_CALL_LOG_PROJECTION:[Ljava/lang/String; = null

.field private static final DLG_ADD_CONTACT:I = 0x64

.field public static final INTENT_CALLLOG_ID:Ljava/lang/String; = "id"

.field public static final PAYPHONE_NUMBER:Ljava/lang/String; = "-3"

.field public static final PRIVATE_NUMBER:Ljava/lang/String; = "-2"

.field private static final TAG:Ljava/lang/String; = "DetailViewActivity"

.field public static final UNKNOWN_NUMBER:Ljava/lang/String; = "-1"

.field static final _REQUEST:I


# instance fields
.field private ContactId:I

.field private LogsId:J

.field addArray:[Ljava/lang/String;

.field isVoiceMailNumber:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mDeckReceiver:Landroid/content/BroadcastReceiver;

.field mDetailListView:Landroid/widget/ListView;

.field private mEmail:Ljava/lang/String;

.field mIsUnknow:Z

.field private mName:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private sendSelection:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 96
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "logtype"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "contactid"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "name_reversed"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "messageid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->DETAIL_CALL_LOG_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->ContactId:I

    .line 116
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->sendSelection:Ljava/lang/String;

    .line 118
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->isVoiceMailNumber:Z

    .line 119
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mIsUnknow:Z

    .line 123
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$1;-><init>(Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mDeckReceiver:Landroid/content/BroadcastReceiver;

    .line 184
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mDetailListView:Landroid/widget/ListView;

    .line 414
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$2;-><init>(Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->ContactId:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method private fillData(Ljava/lang/Long;)V
    .locals 50
    .parameter "id"

    .prologue
    .line 450
    new-instance v37, Ljava/lang/StringBuffer;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuffer;-><init>()V

    .line 451
    .local v37, selection:Ljava/lang/StringBuffer;
    const-string v8, "_id"

    move-object/from16 v0, v37

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 452
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v37

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 455
    .local v5, resolver:Landroid/content/ContentResolver;
    sget-object v6, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->DETAIL_CALL_LOG_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, "date DESC"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 460
    .local v21, cursor:Landroid/database/Cursor;
    if-eqz v21, :cond_0

    .line 461
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1

    .line 462
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 857
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    .line 470
    const-string v8, "orderof"

    const/4 v9, 0x0

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_d

    const/4 v8, 0x1

    move/from16 v28, v8

    .line 472
    .local v28, isRevercedName:Z
    :goto_1
    const/4 v8, 0x7

    move-object/from16 v0, v21

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    move v0, v8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->ContactId:I

    .line 474
    const/16 v41, 0x0

    .line 475
    .local v41, strName:Ljava/lang/String;
    if-eqz v28, :cond_e

    .line 476
    const/4 v8, 0x1

    move-object/from16 v0, v21

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 481
    :goto_2
    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mName:Ljava/lang/String;

    .line 483
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mIsUnknow:Z

    .line 485
    const/4 v8, 0x2

    move-object/from16 v0, v21

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 486
    .local v42, strNumber:Ljava/lang/String;
    const-string v8, "-1"

    move-object/from16 v0, v42

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 487
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090030

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 488
    const/4 v8, 0x1

    move v0, v8

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mIsUnknow:Z

    .line 504
    :cond_2
    :goto_3
    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mNumber:Ljava/lang/String;

    .line 505
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 508
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    .line 509
    .local v18, buffer:Ljava/lang/StringBuffer;
    const-string v8, "contact_id"

    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 510
    const-string v8, "=?"

    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 511
    const/16 v19, 0x0

    .line 512
    .local v19, contactCursor:Landroid/database/Cursor;
    if-eqz v41, :cond_4

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_4

    .line 513
    sget-object v6, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x1

    new-array v7, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "data1"

    aput-object v9, v7, v8

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->ContactId:I

    move v11, v0

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 518
    if-eqz v19, :cond_4

    .line 519
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    .line 520
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-eqz v8, :cond_3

    .line 521
    const/4 v8, 0x0

    move-object/from16 v0, v19

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mEmail:Ljava/lang/String;

    .line 523
    :cond_3
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 528
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v8, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v42 .. v42}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    .line 535
    .local v31, phonesCursor:Landroid/database/Cursor;
    if-eqz v31, :cond_6

    .line 536
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 537
    const-string v8, "display_name"

    move-object/from16 v0, v31

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, v31

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 538
    .local v22, dName:Ljava/lang/String;
    const-string v8, "display_name_reverse"

    move-object/from16 v0, v31

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, v31

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 540
    .local v34, rName:Ljava/lang/String;
    const-string v8, "_id"

    move-object/from16 v0, v31

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, v31

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 542
    .local v26, iid:I
    new-instance v46, Landroid/content/ContentValues;

    invoke-direct/range {v46 .. v46}, Landroid/content/ContentValues;-><init>()V

    .line 543
    .local v46, values:Landroid/content/ContentValues;
    const-string v8, "name"

    move-object/from16 v0, v46

    move-object v1, v8

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v8, "name_reversed"

    move-object/from16 v0, v46

    move-object v1, v8

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const-string v8, "contactid"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v46

    move-object v1, v8

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 548
    if-eqz v28, :cond_12

    .line 549
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mName:Ljava/lang/String;

    .line 554
    :goto_4
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->ContactId:I

    .line 556
    new-instance v49, Ljava/lang/StringBuffer;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuffer;-><init>()V

    .line 557
    .local v49, where:Ljava/lang/StringBuffer;
    const-string v8, "number"

    move-object/from16 v0, v49

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 558
    const-string v8, "=?"

    move-object/from16 v0, v49

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 560
    const/4 v8, 0x1

    move v0, v8

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v38, v0

    const/4 v8, 0x0

    aput-object v42, v38, v8

    .line 562
    .local v38, selectionArgs:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, v46

    move-object v3, v10

    move-object/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 564
    .end local v22           #dName:Ljava/lang/String;
    .end local v26           #iid:I
    .end local v34           #rName:Ljava/lang/String;
    .end local v38           #selectionArgs:[Ljava/lang/String;
    .end local v46           #values:Landroid/content/ContentValues;
    .end local v49           #where:Ljava/lang/StringBuffer;
    :cond_5
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 568
    :cond_6
    const v8, 0x7f06004d

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/TextView;

    .line 569
    .local v43, tvName:Landroid/widget/TextView;
    const v8, 0x7f06004e

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v44

    check-cast v44, Landroid/widget/TextView;

    .line 572
    .local v44, tvNumber:Landroid/widget/TextView;
    if-eqz v41, :cond_14

    .line 573
    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_13

    .line 574
    move-object/from16 v0, v43

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    :goto_5
    sget-object v8, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->ContactId:I

    move v9, v0

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 597
    .local v6, uri:Landroid/net/Uri;
    const/4 v8, 0x6

    new-array v7, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "photo_id"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "starred"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "lookup"

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "display_name"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-string v9, "display_name_reverse"

    aput-object v9, v7, v8

    .line 599
    .local v7, projection:[Ljava/lang/String;
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 601
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    .line 602
    const/16 v17, 0x1

    .line 603
    .local v17, bNoImg:Z
    const/16 v16, 0x0

    .line 604
    .local v16, bIsStarred:Z
    const/16 v40, 0x0

    .line 605
    .local v40, strLookupKey:Ljava/lang/String;
    if-eqz v19, :cond_19

    .line 606
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-eqz v8, :cond_18

    .line 607
    const-string v8, "photo_id"

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 608
    .local v25, idx:I
    const-string v8, "starred"

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v39

    .line 609
    .local v39, starIdx:I
    const-string v8, "lookup"

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 611
    .local v29, lookupIdx:I
    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 612
    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_15

    const/4 v8, 0x1

    move/from16 v16, v8

    .line 613
    :goto_6
    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 615
    .local v33, photoId:I
    if-eqz v28, :cond_16

    .line 616
    const-string v8, "display_name"

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, v19

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mName:Ljava/lang/String;

    .line 621
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mName:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v0, v43

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    move/from16 v0, v33

    int-to-long v0, v0

    move-wide v8, v0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-wide v1, v8

    move-object v3, v10

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/dialertab/dialer/ContactsUtils;->loadContactPhoto(Landroid/content/Context;JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v32

    .line 626
    .local v32, photoBm:Landroid/graphics/Bitmap;
    if-eqz v32, :cond_17

    .line 627
    const v8, 0x7f060049

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #uri:Landroid/net/Uri;
    check-cast v6, Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 628
    const v8, 0x7f06004a

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/QuickContactBadge;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 629
    const v8, 0x7f06004a

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/QuickContactBadge;

    move-object v0, v6

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 630
    const v8, 0x7f06004a

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/QuickContactBadge;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->ContactId:I

    move v8, v0

    int-to-long v8, v8

    move-wide v0, v8

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 631
    const/16 v17, 0x0

    .line 645
    .end local v25           #idx:I
    .end local v29           #lookupIdx:I
    .end local v32           #photoBm:Landroid/graphics/Bitmap;
    .end local v33           #photoId:I
    .end local v39           #starIdx:I
    :cond_7
    :goto_8
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 674
    :cond_8
    :goto_9
    invoke-static/range {v42 .. v42}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v27

    .line 675
    .local v27, isEmergencyNumber:Z
    if-eqz v27, :cond_9

    .line 676
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090033

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v43

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    :cond_9
    const-string v8, "phone"

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v30

    .line 684
    .local v30, mVoiceMailNumber:Ljava/lang/String;
    move-object/from16 v0, v42

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 685
    const v8, 0x7f09002f

    move-object/from16 v0, v43

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 686
    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    const/4 v8, 0x1

    move v0, v8

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->isVoiceMailNumber:Z

    .line 691
    :cond_a
    if-eqz v17, :cond_b

    .line 692
    if-nez v40, :cond_1a

    .line 693
    const v8, 0x7f06004a

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/QuickContactBadge;

    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 694
    const v8, 0x7f060049

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 695
    const v8, 0x7f060049

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v8, 0x7f0200ef

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 696
    const v8, 0x7f060049

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object v8, v0

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 704
    :cond_b
    :goto_a
    if-eqz v16, :cond_1b

    .line 705
    const v8, 0x7f06004b

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 706
    const v8, 0x7f06004b

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v8, 0x7f0200f0

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 711
    :goto_b
    const v8, 0x7f06004c

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$4;

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$4;-><init>(Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 719
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mIsUnknow:Z

    move v8, v0

    if-nez v8, :cond_21

    .line 720
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    .line 721
    .local v36, sb:Ljava/lang/StringBuilder;
    const-string v8, "number="

    move-object/from16 v0, v36

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v36

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->sendSelection:Ljava/lang/String;

    .line 730
    sget-object v9, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x7

    new-array v10, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v11, "_id"

    aput-object v11, v10, v8

    const/4 v8, 0x1

    const-string v11, "duration"

    aput-object v11, v10, v8

    const/4 v8, 0x2

    const-string v11, "date"

    aput-object v11, v10, v8

    const/4 v8, 0x3

    const-string v11, "logtype"

    aput-object v11, v10, v8

    const/4 v8, 0x4

    const-string v11, "type"

    aput-object v11, v10, v8

    const/4 v8, 0x5

    const-string v11, "number"

    aput-object v11, v10, v8

    const/4 v8, 0x6

    const-string v11, "messageid"

    aput-object v11, v10, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->sendSelection:Ljava/lang/String;

    move-object v11, v0

    const/4 v12, 0x0

    const-string v13, "date DESC"

    move-object v8, v5

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 740
    .local v23, detailCursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mDetailListView:Landroid/widget/ListView;

    move-object v8, v0

    new-instance v9, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 742
    const v8, 0x7f060057

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v48

    check-cast v48, Landroid/widget/Button;

    .line 744
    .local v48, viewVideoCall:Landroid/widget/Button;
    const/16 v8, 0x8

    move-object/from16 v0, v48

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 757
    const v8, 0x7f060054

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout;

    .line 758
    .local v15, actionView:Landroid/widget/RelativeLayout;
    const v8, 0x7f060050

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout;

    .line 760
    .local v14, actionEmailView:Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mEmail:Ljava/lang/String;

    move-object v8, v0

    if-nez v8, :cond_1d

    .line 761
    const/4 v8, 0x0

    invoke-virtual {v15, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 762
    const/16 v8, 0x8

    invoke-virtual {v14, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 764
    const v8, 0x7f060055

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$5;

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$5;-><init>(Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 770
    const v8, 0x7f060056

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v47

    check-cast v47, Landroid/widget/Button;

    .line 771
    .local v47, viewMessage:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->isVoiceMailNumber:Z

    move v8, v0

    if-eqz v8, :cond_1c

    .line 772
    const/16 v8, 0x8

    move-object/from16 v0, v47

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 811
    :goto_c
    const v8, 0x7f060059

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v35

    .line 812
    .local v35, saveView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->isVoiceMailNumber:Z

    move v8, v0

    if-nez v8, :cond_c

    if-eqz v41, :cond_1f

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1f

    .line 813
    :cond_c
    const/16 v8, 0x8

    move-object/from16 v0, v35

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 470
    .end local v7           #projection:[Ljava/lang/String;
    .end local v14           #actionEmailView:Landroid/widget/RelativeLayout;
    .end local v15           #actionView:Landroid/widget/RelativeLayout;
    .end local v16           #bIsStarred:Z
    .end local v17           #bNoImg:Z
    .end local v18           #buffer:Ljava/lang/StringBuffer;
    .end local v19           #contactCursor:Landroid/database/Cursor;
    .end local v23           #detailCursor:Landroid/database/Cursor;
    .end local v27           #isEmergencyNumber:Z
    .end local v28           #isRevercedName:Z
    .end local v30           #mVoiceMailNumber:Ljava/lang/String;
    .end local v31           #phonesCursor:Landroid/database/Cursor;
    .end local v35           #saveView:Landroid/view/View;
    .end local v36           #sb:Ljava/lang/StringBuilder;
    .end local v40           #strLookupKey:Ljava/lang/String;
    .end local v41           #strName:Ljava/lang/String;
    .end local v42           #strNumber:Ljava/lang/String;
    .end local v43           #tvName:Landroid/widget/TextView;
    .end local v44           #tvNumber:Landroid/widget/TextView;
    .end local v47           #viewMessage:Landroid/widget/Button;
    .end local v48           #viewVideoCall:Landroid/widget/Button;
    :cond_d
    const/4 v8, 0x0

    move/from16 v28, v8

    goto/16 :goto_1

    .line 478
    .restart local v28       #isRevercedName:Z
    .restart local v41       #strName:Ljava/lang/String;
    :cond_e
    const/16 v8, 0x8

    move-object/from16 v0, v21

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    goto/16 :goto_2

    .line 490
    .restart local v42       #strNumber:Ljava/lang/String;
    :cond_f
    const-string v8, "-2"

    move-object/from16 v0, v42

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090031

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 492
    const/4 v8, 0x1

    move v0, v8

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mIsUnknow:Z

    goto/16 :goto_3

    .line 494
    :cond_10
    const-string v8, "-3"

    move-object/from16 v0, v42

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 495
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090032

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 496
    const/4 v8, 0x1

    move v0, v8

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mIsUnknow:Z

    goto/16 :goto_3

    .line 499
    :cond_11
    invoke-static/range {v42 .. v42}, Landroid/telephony/PhoneNumberUtils;->isCheckInvalidNumber(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 500
    const/4 v8, 0x1

    move v0, v8

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mIsUnknow:Z

    goto/16 :goto_3

    .line 551
    .restart local v18       #buffer:Ljava/lang/StringBuffer;
    .restart local v19       #contactCursor:Landroid/database/Cursor;
    .restart local v22       #dName:Ljava/lang/String;
    .restart local v26       #iid:I
    .restart local v31       #phonesCursor:Landroid/database/Cursor;
    .restart local v34       #rName:Ljava/lang/String;
    .restart local v46       #values:Landroid/content/ContentValues;
    :cond_12
    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mName:Ljava/lang/String;

    goto/16 :goto_4

    .line 578
    .end local v22           #dName:Ljava/lang/String;
    .end local v26           #iid:I
    .end local v34           #rName:Ljava/lang/String;
    .end local v46           #values:Landroid/content/ContentValues;
    .restart local v43       #tvName:Landroid/widget/TextView;
    .restart local v44       #tvNumber:Landroid/widget/TextView;
    :cond_13
    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    const-string v8, ""

    move-object/from16 v0, v44

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 583
    :cond_14
    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    const-string v8, ""

    move-object/from16 v0, v44

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 612
    .restart local v6       #uri:Landroid/net/Uri;
    .restart local v7       #projection:[Ljava/lang/String;
    .restart local v16       #bIsStarred:Z
    .restart local v17       #bNoImg:Z
    .restart local v25       #idx:I
    .restart local v29       #lookupIdx:I
    .restart local v39       #starIdx:I
    .restart local v40       #strLookupKey:Ljava/lang/String;
    :cond_15
    const/4 v8, 0x0

    move/from16 v16, v8

    goto/16 :goto_6

    .line 618
    .restart local v33       #photoId:I
    :cond_16
    const-string v8, "display_name_reverse"

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, v19

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mName:Ljava/lang/String;

    goto/16 :goto_7

    .line 633
    .restart local v32       #photoBm:Landroid/graphics/Bitmap;
    :cond_17
    const/16 v17, 0x1

    goto/16 :goto_8

    .line 636
    .end local v25           #idx:I
    .end local v29           #lookupIdx:I
    .end local v32           #photoBm:Landroid/graphics/Bitmap;
    .end local v33           #photoId:I
    .end local v39           #starIdx:I
    :cond_18
    invoke-virtual/range {v44 .. v44}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 638
    invoke-virtual/range {v44 .. v44}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    move-object/from16 v0, v43

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 639
    const-string v8, ""

    move-object/from16 v0, v44

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->ContactId:I

    .line 641
    const/4 v8, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mName:Ljava/lang/String;

    .line 642
    const/16 v41, 0x0

    goto/16 :goto_8

    .line 648
    :cond_19
    invoke-virtual/range {v44 .. v44}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 649
    const/4 v8, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mName:Ljava/lang/String;

    .line 666
    invoke-virtual/range {v44 .. v44}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    move-object/from16 v0, v43

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    const-string v8, ""

    move-object/from16 v0, v44

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 698
    .end local v6           #uri:Landroid/net/Uri;
    .restart local v27       #isEmergencyNumber:Z
    .restart local v30       #mVoiceMailNumber:Ljava/lang/String;
    :cond_1a
    const v8, 0x7f060049

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 699
    const v8, 0x7f06004a

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/QuickContactBadge;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 700
    const v8, 0x7f06004a

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/QuickContactBadge;

    const v8, 0x7f0200ef

    invoke-virtual {v6, v8}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    .line 701
    const v8, 0x7f06004a

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/QuickContactBadge;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->ContactId:I

    move v8, v0

    int-to-long v8, v8

    move-wide v0, v8

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto/16 :goto_a

    .line 708
    :cond_1b
    const v8, 0x7f06004b

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_b

    .line 774
    .restart local v14       #actionEmailView:Landroid/widget/RelativeLayout;
    .restart local v15       #actionView:Landroid/widget/RelativeLayout;
    .restart local v23       #detailCursor:Landroid/database/Cursor;
    .restart local v36       #sb:Ljava/lang/StringBuilder;
    .restart local v47       #viewMessage:Landroid/widget/Button;
    .restart local v48       #viewVideoCall:Landroid/widget/Button;
    :cond_1c
    new-instance v8, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$6;

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$6;-><init>(Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;)V

    move-object/from16 v0, v47

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_c

    .line 782
    .end local v47           #viewMessage:Landroid/widget/Button;
    :cond_1d
    const/16 v8, 0x8

    invoke-virtual {v15, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 783
    const/4 v8, 0x0

    invoke-virtual {v14, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 785
    const v8, 0x7f060051

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$7;

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$7;-><init>(Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 791
    const v8, 0x7f060052

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v47

    check-cast v47, Landroid/widget/Button;

    .line 792
    .restart local v47       #viewMessage:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->isVoiceMailNumber:Z

    move v8, v0

    if-eqz v8, :cond_1e

    .line 793
    const/16 v8, 0x8

    move-object/from16 v0, v47

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 802
    :goto_d
    const v8, 0x7f060053

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/Button;

    .line 803
    .local v24, emailView:Landroid/widget/Button;
    new-instance v8, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$9;

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$9;-><init>(Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;)V

    move-object/from16 v0, v24

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_c

    .line 795
    .end local v24           #emailView:Landroid/widget/Button;
    :cond_1e
    new-instance v8, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$8;

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$8;-><init>(Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;)V

    move-object/from16 v0, v47

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_d

    .line 815
    .restart local v35       #saveView:Landroid/view/View;
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->ContactId:I

    move v8, v0

    if-lez v8, :cond_20

    .line 816
    const/16 v8, 0x8

    move-object/from16 v0, v35

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 818
    :cond_20
    const/4 v8, 0x0

    move-object/from16 v0, v35

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 819
    const v8, 0x7f06005b

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 820
    .local v20, createContactView:Landroid/view/View;
    new-instance v8, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$10;

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$10;-><init>(Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;)V

    move-object/from16 v0, v20

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 827
    const v8, 0x7f06005c

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v45

    .line 828
    .local v45, updateContactView:Landroid/view/View;
    new-instance v8, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$11;

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$11;-><init>(Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;)V

    move-object/from16 v0, v45

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 842
    .end local v14           #actionEmailView:Landroid/widget/RelativeLayout;
    .end local v15           #actionView:Landroid/widget/RelativeLayout;
    .end local v20           #createContactView:Landroid/view/View;
    .end local v23           #detailCursor:Landroid/database/Cursor;
    .end local v35           #saveView:Landroid/view/View;
    .end local v36           #sb:Ljava/lang/StringBuilder;
    .end local v45           #updateContactView:Landroid/view/View;
    .end local v47           #viewMessage:Landroid/widget/Button;
    .end local v48           #viewVideoCall:Landroid/widget/Button;
    :cond_21
    sget-object v9, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x7

    new-array v10, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v11, "_id"

    aput-object v11, v10, v8

    const/4 v8, 0x1

    const-string v11, "duration"

    aput-object v11, v10, v8

    const/4 v8, 0x2

    const-string v11, "date"

    aput-object v11, v10, v8

    const/4 v8, 0x3

    const-string v11, "logtype"

    aput-object v11, v10, v8

    const/4 v8, 0x4

    const-string v11, "type"

    aput-object v11, v10, v8

    const/4 v8, 0x5

    const-string v11, "number"

    aput-object v11, v10, v8

    const/4 v8, 0x6

    const-string v11, "messageid"

    aput-object v11, v10, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_id="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const-string v13, "date DESC"

    move-object v8, v5

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 851
    .restart local v23       #detailCursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mDetailListView:Landroid/widget/ListView;

    move-object v8, v0

    new-instance v9, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 853
    const v8, 0x7f06004f

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 854
    const v8, 0x7f060059

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 396
    if-ne p2, v4, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->finish()V

    .line 411
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 412
    return-void

    .line 399
    :cond_0
    const-string v0, "DetailViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->LogsId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->sendSelection:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 403
    .local v6, detailCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 404
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 405
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->LogsId:J

    .line 406
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 409
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->onResume()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 189
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 194
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 195
    .local v0, intent:Landroid/content/Intent;
    if-nez p1, :cond_0

    .line 196
    const-string v1, "id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->LogsId:J

    .line 198
    :cond_0
    const-string v1, "DetailViewActivity"

    const-string v2, "In Read"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->requestWindowFeature(I)Z

    .line 200
    const v1, 0x7f030005

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->setContentView(I)V

    .line 201
    const v1, 0x7f06005d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mDetailListView:Landroid/widget/ListView;

    .line 202
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f090049

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const v2, 0x7f09004a

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->addArray:[Ljava/lang/String;

    .line 214
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 425
    packed-switch p1, :pswitch_data_0

    .line 447
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 427
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->addArray:[Ljava/lang/String;

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity$3;-><init>(Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 425
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 342
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mIsUnknow:Z

    if-nez v1, :cond_0

    .line 343
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 345
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 346
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0d0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 347
    const/4 v1, 0x1

    .line 349
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 256
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 258
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mNumber:Ljava/lang/String;

    const-string v2, "-2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mNumber:Ljava/lang/String;

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isCheckInvalidNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 263
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-nez v1, :cond_1

    .line 264
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mNumber:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->finish()V

    move v1, v3

    .line 273
    .end local v0           #tm:Landroid/telephony/TelephonyManager;
    :goto_0
    return v1

    .line 269
    :cond_0
    const v1, 0x7f090011

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move v1, v3

    .line 270
    goto :goto_0

    .line 273
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-class v3, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    const-string v7, "SQL"

    .line 355
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v2, v6

    .line 390
    :goto_0
    return v2

    .line 368
    :pswitch_0
    iget v2, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->ContactId:I

    invoke-static {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->viewContact(Landroid/content/Context;I)V

    move v2, v5

    .line 369
    goto :goto_0

    .line 372
    :pswitch_1
    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mIsUnknow:Z

    if-eqz v2, :cond_0

    .line 373
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 374
    .local v0, i:Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->LogsId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, sendSql:Ljava/lang/String;
    const-string v2, "SQL"

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    invoke-virtual {p0, v0, v6}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v2, v5

    .line 377
    goto :goto_0

    .line 379
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #sendSql:Ljava/lang/String;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 380
    .restart local v0       #i:Landroid/content/Intent;
    const-string v2, "SQL"

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->sendSelection:Ljava/lang/String;

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    invoke-virtual {p0, v0, v6}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v2, v5

    .line 382
    goto :goto_0

    .line 387
    .end local v0           #i:Landroid/content/Intent;
    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mNumber:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->editCall(Landroid/content/Context;Ljava/lang/String;)V

    move v2, v5

    .line 388
    goto :goto_0

    .line 355
    :pswitch_data_0
    .packed-switch 0x7f0600dc
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 220
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mDeckReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 222
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 14
    .parameter "menu"

    .prologue
    const v13, 0x7f0200df

    const v12, 0x7f0600de

    const v11, 0x7f0600dc

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 279
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 281
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 282
    .local v8, where:Ljava/lang/StringBuffer;
    const-string v0, "reject_number=?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v10

    .line 284
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.sec.android.app.callsetting.allcalls/reject_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mNumber:Ljava/lang/String;

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 287
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 288
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->isVoiceMailNumber:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mIsUnknow:Z

    if-nez v0, :cond_3

    .line 289
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 312
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 313
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200dd

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 318
    :goto_1
    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v13}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 324
    :cond_0
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 334
    :goto_3
    const v0, 0x7f0600dd

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200dc

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 335
    return v9

    .line 296
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 297
    const-string v0, "reject_number"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 298
    .local v7, idx:I
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--------------------- idx = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    goto :goto_0

    .line 316
    .end local v7           #idx:I
    :cond_2
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 319
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->isVoiceMailNumber:Z

    if-eqz v0, :cond_0

    .line 320
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 321
    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v13}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 330
    :cond_4
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 331
    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 247
    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->LogsId:J

    .line 248
    const-string v0, "selection"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->sendSelection:Ljava/lang/String;

    .line 249
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 250
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 146
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 147
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    sput-boolean v3, Lcom/sec/android/app/dialertab/DialerTabActivity;->m24TimeFormat:Z

    .line 148
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "date_format"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/dialertab/DialerTabActivity;->mDateFormat:Ljava/lang/String;

    .line 149
    sget-object v3, Lcom/sec/android/app/dialertab/DialerTabActivity;->mDateFormat:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 150
    const-string v3, "MM-dd-yyyy"

    sput-object v3, Lcom/sec/android/app/dialertab/DialerTabActivity;->mDateFormat:Ljava/lang/String;

    .line 153
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mCalendar:Ljava/util/Calendar;

    .line 154
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 156
    iget-wide v3, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->LogsId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->fillData(Ljava/lang/Long;)V

    .line 160
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 161
    .local v0, deckFilter:Landroid/content/IntentFilter;
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    sget-object v3, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    sget-object v3, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->mDeckReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "uimode"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    .line 170
    .local v1, modeManager:Landroid/app/UiModeManager;
    invoke-virtual {v1}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v2

    .line 172
    .local v2, modeType:I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 173
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->setRequestedOrientation(I)V

    .line 182
    :goto_0
    return-void

    .line 175
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 176
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 179
    :cond_2
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 239
    const-string v0, "id"

    iget-wide v1, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->LogsId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 240
    const-string v0, "selection"

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;->sendSelection:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 242
    return-void
.end method
