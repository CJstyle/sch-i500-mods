.class public Lcom/android/browser/BrowserDownloadAdapter;
.super Lcom/android/browser/DateSortedExpandableListAdapter;
.source "BrowserDownloadAdapter.java"


# instance fields
.field private mBDDConfirmingStatus:Z

.field private mColumnFileDesc:I

.field private mColumnFileSize:I

.field private mColumnFilename:I

.field private mColumnNotifyUrl:I

.field private mColumnObjUrl:I

.field private mColumnSecMime:I

.field private mColumnVendorname:I

.field private mColumnVersionID:I

.field private mColumnprimaryMime:I

.field private mCurrentBytesColumnId:I

.field private mDDconfirmingPosition:I

.field private mDateColumnId:I

.field private mDescColumnId:I

.field private mFilenameColumnId:I

.field private mMethodColumnId:I

.field private mMimetypeColumnId:I

.field private mStateColumnId:I

.field private mStatusColumnId:I

.field private mTitleColumnId:I

.field private mTotalBytesColumnId:I

.field private final sTAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 1
    .parameter "context"
    .parameter "c"
    .parameter "index"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/DateSortedExpandableListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 54
    const-string v0, "BrowserDownloadAdapter"

    iput-object v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->sTAG:Ljava/lang/String;

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mDDconfirmingPosition:I

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mBDDConfirmingStatus:Z

    .line 79
    const-string v0, "title"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mTitleColumnId:I

    .line 80
    const-string v0, "description"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mDescColumnId:I

    .line 81
    const-string v0, "status"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mStatusColumnId:I

    .line 82
    const-string v0, "state"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mStateColumnId:I

    .line 83
    const-string v0, "total_bytes"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mTotalBytesColumnId:I

    .line 84
    const-string v0, "current_bytes"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mCurrentBytesColumnId:I

    .line 86
    const-string v0, "mimetype"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mMimetypeColumnId:I

    .line 87
    const-string v0, "lastmod"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mDateColumnId:I

    .line 88
    const-string v0, "downloadmethod"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mMethodColumnId:I

    .line 89
    const-string v0, "dd_primaryMimeType"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mColumnprimaryMime:I

    .line 90
    const-string v0, "dd_SecondaryMimeType1"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mColumnSecMime:I

    .line 91
    const-string v0, "dd_fileName"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mColumnFilename:I

    .line 92
    const-string v0, "dd_vendor"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mColumnVendorname:I

    .line 93
    const-string v0, "dd_description"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mColumnFileDesc:I

    .line 94
    const-string v0, "dd_contentSize"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mColumnFileSize:I

    .line 95
    const-string v0, "dd_objUrl"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mColumnObjUrl:I

    .line 96
    const-string v0, "dd_notifyurl"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mColumnNotifyUrl:I

    .line 97
    const-string v0, "dd_majorVersion"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mColumnVersionID:I

    .line 98
    const-string v0, "_data"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserDownloadAdapter;->mFilenameColumnId:I

    .line 99
    return-void
.end method

.method public static getErrorText(I)I
    .locals 1
    .parameter "status"

    .prologue
    .line 307
    sparse-switch p0, :sswitch_data_0

    .line 387
    const v0, 0x7f0900dc

    :goto_0
    return v0

    .line 309
    :sswitch_0
    const v0, 0x7f0900e3

    goto :goto_0

    .line 312
    :sswitch_1
    const v0, 0x7f0900e5

    goto :goto_0

    .line 315
    :sswitch_2
    const v0, 0x7f0900e6

    goto :goto_0

    .line 318
    :sswitch_3
    const v0, 0x7f0900e2

    goto :goto_0

    .line 321
    :sswitch_4
    const v0, 0x7f0900e4

    goto :goto_0

    .line 325
    :sswitch_5
    const v0, 0x7f090121

    goto :goto_0

    .line 330
    :sswitch_6
    const v0, 0x7f090127

    goto :goto_0

    .line 334
    :sswitch_7
    const v0, 0x7f090125

    goto :goto_0

    .line 337
    :sswitch_8
    const v0, 0x7f09011d

    goto :goto_0

    .line 340
    :sswitch_9
    const v0, 0x7f090122

    goto :goto_0

    .line 343
    :sswitch_a
    const v0, 0x7f090124

    goto :goto_0

    .line 346
    :sswitch_b
    const v0, 0x7f090123

    goto :goto_0

    .line 349
    :sswitch_c
    const v0, 0x7f090126

    goto :goto_0

    .line 352
    :sswitch_d
    const v0, 0x7f0900b5

    goto :goto_0

    .line 355
    :sswitch_e
    const v0, 0x7f090120

    goto :goto_0

    .line 360
    :sswitch_f
    const v0, 0x7f09011f

    goto :goto_0

    .line 364
    :sswitch_10
    const v0, 0x7f09011e

    goto :goto_0

    .line 367
    :sswitch_11
    const v0, 0x7f090128

    goto :goto_0

    .line 371
    :sswitch_12
    const v0, 0x7f09012c

    goto :goto_0

    .line 375
    :sswitch_13
    const v0, 0x7f09012b

    goto :goto_0

    .line 380
    :sswitch_14
    const v0, 0x7f09012a

    goto :goto_0

    .line 383
    :sswitch_15
    const v0, 0x7f090129

    goto :goto_0

    .line 307
    nop

    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_11
        0x196 -> :sswitch_0
        0x19b -> :sswitch_1
        0x19c -> :sswitch_2
        0x1ea -> :sswitch_3
        0x1ec -> :sswitch_4
        0x1ed -> :sswitch_12
        0x1ee -> :sswitch_13
        0x1ef -> :sswitch_13
        0x1f0 -> :sswitch_14
        0x1f1 -> :sswitch_12
        0x259 -> :sswitch_5
        0x25a -> :sswitch_5
        0x262 -> :sswitch_6
        0x26c -> :sswitch_7
        0x26d -> :sswitch_8
        0x276 -> :sswitch_9
        0x277 -> :sswitch_a
        0x278 -> :sswitch_b
        0x279 -> :sswitch_c
        0x27a -> :sswitch_6
        0x281 -> :sswitch_d
        0x28a -> :sswitch_15
        0x28b -> :sswitch_14
        0x28c -> :sswitch_10
        0x28d -> :sswitch_10
        0x28e -> :sswitch_f
        0x28f -> :sswitch_f
        0x290 -> :sswitch_e
        0x291 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 38
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserDownloadAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 105
    .local v7, context:Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserDownloadAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v17

    .line 110
    .local v17, mCursordownload:Landroid/database/Cursor;
    const-string v34, "BrowserDownloadAdapter"

    const-string v35, "BrowserDownloadAdapter: getChildView bEGIN"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    instance-of v0, v0, Landroid/widget/RelativeLayout;

    move/from16 v34, v0

    if-nez v34, :cond_1

    .line 113
    :cond_0
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v34

    const v35, 0x7f030009

    const/16 v36, 0x0

    invoke-virtual/range {v34 .. v36}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 120
    :cond_1
    :try_start_0
    const-string v34, "BrowserDownloadAdapter1"

    const-string v35, "BrowserDownloadAdapter: Try Exception"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual/range {p0 .. p2}, Lcom/android/browser/BrowserDownloadAdapter;->moveCursorToChildPosition(II)Z
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v34

    if-nez v34, :cond_2

    .line 298
    .end local v7           #context:Landroid/content/Context;
    .end local p1
    :goto_0
    return-object p4

    .line 124
    .restart local v7       #context:Landroid/content/Context;
    .restart local p1
    :catch_0
    move-exception v34

    move-object/from16 v12, v34

    .line 125
    .local v12, e:Landroid/database/StaleDataException;
    const-string v34, "BrowserDownloadAdapter1"

    const-string v35, "BrowserDownloadAdapter: Catch Exception"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->deactivate()V

    .line 127
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->requery()Z

    .line 130
    .end local v12           #e:Landroid/database/StaleDataException;
    :cond_2
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 133
    .local v23, r:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mMimetypeColumnId:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 134
    .local v18, mimeType:Ljava/lang/String;
    const v34, 0x7f0d0020

    move-object/from16 v0, p4

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 137
    .local v15, iv:Landroid/widget/ImageView;
    if-nez v18, :cond_4

    .line 138
    const/16 v34, 0x4

    move-object v0, v15

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    .end local p1
    :goto_1
    const v34, 0x7f0d0021

    move-object/from16 v0, p4

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 155
    .local v32, tv:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mTitleColumnId:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 156
    .local v29, title:Ljava/lang/String;
    if-nez v29, :cond_3

    .line 157
    const v34, 0x7f0900c9

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 159
    :cond_3
    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    const v34, 0x7f0d0022

    move-object/from16 v0, p4

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    .end local v32           #tv:Landroid/widget/TextView;
    check-cast v32, Landroid/widget/TextView;

    .line 162
    .restart local v32       #tv:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mDescColumnId:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mTotalBytesColumnId:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getLong(I)J

    move-result-wide v30

    .line 166
    .local v30, totalBytes:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mStatusColumnId:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getInt(I)I

    move-result v26

    .line 167
    .local v26, status:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mStateColumnId:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getInt(I)I

    move-result v25

    .line 168
    .local v25, state:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mMethodColumnId:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getInt(I)I

    move-result v6

    .line 170
    .local v6, DownloadMethod:I
    const/16 v34, 0xb6

    move/from16 v0, v26

    move/from16 v1, v34

    if-ne v0, v1, :cond_6

    .line 171
    const-string v34, "BrowserDownloadAdapter"

    const-string v35, "BrowserDownloadAdapter: bindView Downlaod status: CD_STATUS_PENDING_USERCONFIRM"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v34, "BrowserDownloadAdapter"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Primary MimeType : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mColumnprimaryMime:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getString(I)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v34, "BrowserDownloadAdapter"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Secondary MimeType : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mColumnSecMime:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getString(I)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v34, "BrowserDownloadAdapter"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "File Name : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mColumnFilename:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getString(I)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v34, "BrowserDownloadAdapter"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Vendor Name : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mColumnVendorname:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getString(I)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-string v34, "BrowserDownloadAdapter"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "File Desc: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mColumnFileDesc:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getString(I)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v34, "BrowserDownloadAdapter"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Object Url : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mColumnObjUrl:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getString(I)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-string v34, "BrowserDownloadAdapter"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Notify Url : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mColumnNotifyUrl:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getString(I)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-string v34, "BrowserDownloadAdapter"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Content Size : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mColumnFileSize:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getInt(I)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v34, "BrowserDownloadAdapter"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Version Number : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mColumnVersionID:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getInt(I)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    check-cast v7, Lcom/android/browser/BrowserDownloadPage;

    .end local v7           #context:Landroid/content/Context;
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getLong(I)J

    move-result-wide v34

    move-object v0, v7

    move/from16 v1, p2

    move-wide/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/browser/BrowserDownloadPage;->viewDDInfo(IJ)V

    goto/16 :goto_0

    .line 140
    .end local v6           #DownloadMethod:I
    .end local v25           #state:I
    .end local v26           #status:I
    .end local v29           #title:Ljava/lang/String;
    .end local v30           #totalBytes:J
    .end local v32           #tv:Landroid/widget/TextView;
    .restart local v7       #context:Landroid/content/Context;
    .restart local p1
    :cond_4
    new-instance v14, Landroid/content/Intent;

    const-string v34, "android.intent.action.VIEW"

    move-object v0, v14

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v14, intent:Landroid/content/Intent;
    const-string v34, "file"

    const-string v35, ""

    const/16 v36, 0x0

    invoke-static/range {v34 .. v36}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v34

    move-object v0, v14

    move-object/from16 v1, v34

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    .line 143
    .local v20, pm:Landroid/content/pm/PackageManager;
    const/high16 v34, 0x1

    move-object/from16 v0, v20

    move-object v1, v14

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v16

    .line 145
    .local v16, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v34

    if-lez v34, :cond_5

    .line 146
    const/16 v34, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 147
    .local v13, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v15, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    const/16 v34, 0x0

    move-object v0, v15

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 150
    .end local v13           #icon:Landroid/graphics/drawable/Drawable;
    .restart local p1
    :cond_5
    const/16 v34, 0x4

    move-object v0, v15

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 192
    .end local v14           #intent:Landroid/content/Intent;
    .end local v16           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v20           #pm:Landroid/content/pm/PackageManager;
    .end local p1
    .restart local v6       #DownloadMethod:I
    .restart local v25       #state:I
    .restart local v26       #status:I
    .restart local v29       #title:Ljava/lang/String;
    .restart local v30       #totalBytes:J
    .restart local v32       #tv:Landroid/widget/TextView;
    :cond_6
    const-string v34, "BrowserDownloadAdapter"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "BrowserDownloadAdapter: Download  State : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "Status : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static/range {v25 .. v25}, Landroid/provider/Downloads$Impl;->isDownloadCompleted(I)Z

    move-result v34

    if-eqz v34, :cond_b

    .line 195
    const-string v34, "BrowserDownloadAdapter"

    const-string v35, "BrowserDownloadAdapter: Download Complete/Fail "

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const v34, 0x7f0d0026

    move-object/from16 v0, p4

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    .line 197
    .local v33, v:Landroid/view/View;
    const/16 v34, 0x8

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setVisibility(I)V

    .line 199
    const v34, 0x7f0d0025

    move-object/from16 v0, p4

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    .line 200
    const/16 v34, 0x8

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setVisibility(I)V

    .line 202
    const v34, 0x7f0d0024

    move-object/from16 v0, p4

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    .end local v32           #tv:Landroid/widget/TextView;
    check-cast v32, Landroid/widget/TextView;

    .line 203
    .restart local v32       #tv:Landroid/widget/TextView;
    const/16 v34, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    invoke-static/range {v26 .. v26}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v34

    if-eqz v34, :cond_7

    .line 205
    invoke-static/range {v26 .. v26}, Lcom/android/browser/BrowserDownloadAdapter;->getErrorText(I)I

    move-result v34

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 224
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mDateColumnId:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getLong(I)J

    move-result-wide v27

    .line 225
    .local v27, time:J
    new-instance v10, Ljava/util/Date;

    move-object v0, v10

    move-wide/from16 v1, v27

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 226
    .local v10, d:Ljava/util/Date;
    const/16 v34, 0x3

    invoke-static/range {v34 .. v34}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v11

    .line 227
    .local v11, df:Ljava/text/DateFormat;
    const v34, 0x7f0d0023

    move-object/from16 v0, p4

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    .end local v32           #tv:Landroid/widget/TextView;
    check-cast v32, Landroid/widget/TextView;

    .line 228
    .restart local v32       #tv:Landroid/widget/TextView;
    const/16 v34, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    invoke-virtual {v11, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 208
    .end local v10           #d:Ljava/util/Date;
    .end local v11           #df:Ljava/text/DateFormat;
    .end local v27           #time:J
    :cond_7
    const/16 v34, 0x2

    move v0, v6

    move/from16 v1, v34

    if-eq v0, v1, :cond_8

    const/16 v34, 0x5

    move v0, v6

    move/from16 v1, v34

    if-eq v0, v1, :cond_8

    const/16 v34, 0x3

    move v0, v6

    move/from16 v1, v34

    if-ne v0, v1, :cond_9

    .line 210
    :cond_8
    const-string v34, "BrowserDownloadAdapter"

    const-string v35, "Download completed : ONLY ROAP"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const v34, 0x7f090131

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 213
    :cond_9
    const-wide/16 v34, 0x0

    cmp-long v34, v30, v34

    if-lez v34, :cond_a

    .line 214
    const v34, 0x7f0900dd

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object v0, v7

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    move-object/from16 v0, v23

    move/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 217
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mCurrentBytesColumnId:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getLong(I)J

    move-result-wide v4

    .line 218
    .local v4, BytesReceived:J
    const v34, 0x7f0900dd

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-static {v7, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    move-object/from16 v0, v23

    move/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 232
    .end local v4           #BytesReceived:J
    .end local v33           #v:Landroid/view/View;
    :cond_b
    const v34, 0x7f0d0026

    move-object/from16 v0, p4

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    .end local v32           #tv:Landroid/widget/TextView;
    check-cast v32, Landroid/widget/TextView;

    .line 233
    .restart local v32       #tv:Landroid/widget/TextView;
    const/16 v34, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    const v34, 0x7f0d0025

    move-object/from16 v0, p4

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .line 236
    .local v21, progress:Landroid/view/View;
    const/16 v34, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 238
    const v34, 0x7f0d0023

    move-object/from16 v0, p4

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    .line 239
    .restart local v33       #v:Landroid/view/View;
    const/16 v34, 0x8

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setVisibility(I)V

    .line 241
    const v34, 0x7f0d0024

    move-object/from16 v0, p4

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    .line 242
    const/16 v34, 0x8

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->setVisibility(I)V

    .line 244
    const/16 v34, 0xbe

    move/from16 v0, v26

    move/from16 v1, v34

    if-ne v0, v1, :cond_c

    .line 245
    const v34, 0x7f0900df

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    const-string v34, "BrowserDownloadAdapter"

    const-string v35, "BrowserDownloadAdapter: Status  Downloads.Impl.STATUS_PENDING"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 247
    :cond_c
    const/16 v34, 0xbf

    move/from16 v0, v26

    move/from16 v1, v34

    if-ne v0, v1, :cond_d

    .line 248
    const v34, 0x7f0900e0

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    const-string v34, "BrowserDownloadAdapter"

    const-string v35, "BrowserDownloadAdapter: Status  D Downloads.Impl.STATUS_PENDING_PAUSED"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 250
    :cond_d
    const/16 v34, 0x2

    move v0, v6

    move/from16 v1, v34

    if-eq v0, v1, :cond_e

    const/16 v34, 0x5

    move v0, v6

    move/from16 v1, v34

    if-eq v0, v1, :cond_e

    const/16 v34, 0x3

    move v0, v6

    move/from16 v1, v34

    if-ne v0, v1, :cond_f

    .line 252
    :cond_e
    const-string v34, "BrowserDownloadAdapter"

    const-string v35, "BrowserDownloadAdapter: bindView Roap Processing"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const v34, 0x7f09012d

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 255
    :cond_f
    move-object/from16 v0, v21

    check-cast v0, Landroid/widget/ProgressBar;

    move-object/from16 v19, v0

    .line 257
    .local v19, pb:Landroid/widget/ProgressBar;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .local v24, sb:Ljava/lang/StringBuilder;
    const/16 v34, 0xc0

    move/from16 v0, v26

    move/from16 v1, v34

    if-eq v0, v1, :cond_10

    const/16 v34, 0x3

    move/from16 v0, v25

    move/from16 v1, v34

    if-ne v0, v1, :cond_11

    .line 259
    :cond_10
    const v34, 0x7f0900de

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v34

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 260
    const-string v34, "BrowserDownloadAdapter"

    const-string v35, "BrowserDownloadAdapter: download_running "

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserDownloadAdapter;->mCurrentBytesColumnId:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserDownloadAdapter;->getLong(I)J

    move-result-wide v8

    .line 276
    .local v8, currentBytes:J
    const-string v34, "BrowserDownloadAdapter"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "BrowserDownloadAdapter:  totalBytes "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-wide/16 v34, 0x0

    cmp-long v34, v30, v34

    if-lez v34, :cond_15

    .line 278
    const-wide/16 v34, 0x64

    mul-long v34, v34, v8

    div-long v34, v34, v30

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v22, v0

    .line 279
    .local v22, progressAmount:I
    const-string v34, "BrowserDownloadAdapter"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "BrowserDownloadAdapter: Current Size  "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string v34, "BrowserDownloadAdapter"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "BrowserDownloadAdapter: Progess Amount  "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/16 v34, 0x20

    move-object/from16 v0, v24

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    const-string v34, "% ("

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-static {v7, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    const-string v34, "/"

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    move-object v0, v7

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    const-string v34, ")"

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    const/16 v34, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 289
    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 295
    .end local v22           #progressAmount:I
    :goto_4
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 261
    .end local v8           #currentBytes:J
    :cond_11
    const/16 v34, 0xbc

    move/from16 v0, v26

    move/from16 v1, v34

    if-ne v0, v1, :cond_12

    .line 262
    const-string v34, "BrowserDownloadAdapter"

    const-string v35, "BrowserDownloadAdapter: bindView Ro Activating"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const v34, 0x7f09012f

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v34

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 264
    :cond_12
    const/16 v34, 0x4

    move/from16 v0, v25

    move/from16 v1, v34

    if-ne v0, v1, :cond_13

    .line 265
    const-string v34, "BrowserDownloadAdapter"

    const-string v35, "BrowserDownloadAdapter:   Process Saving"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const v34, 0x7f09012e

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v34

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 267
    :cond_13
    const/16 v34, 0x7

    move/from16 v0, v25

    move/from16 v1, v34

    if-ne v0, v1, :cond_14

    .line 268
    const-string v34, "BrowserDownloadAdapter"

    const-string v35, "BrowserDownloadAdapter: Notification in process "

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const v34, 0x7f090130

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v34

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 271
    :cond_14
    const v34, 0x7f0900e1

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v34

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 272
    const-string v34, "BrowserDownloadAdapter"

    const-string v35, "BrowserDownloadAdapter:download_running_paused "

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 291
    .restart local v8       #currentBytes:J
    :cond_15
    invoke-static {v7, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    const/16 v34, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 293
    const-string v34, "BrowserDownloadAdapter"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "BrowserDownloadAdapter: Current Size  "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method
