.class public Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "FrequentDeleteCursorAdapter.java"


# static fields
.field public static final FAVORITE_TAG:I = 0x1

.field public static final FREQUENT_TAG:I = 0x2


# instance fields
.field idxFerqContactId:I

.field idxFreqCount:I

.field idxFreqName:I

.field idxFreqNameReversed:I

.field idxFreqNumber:I

.field private mCenterSepPos:I

.field private mCenterSeprationFlag:I

.field private mIsReversedName:Z

.field private mItemCheck:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field mVoiceMailNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/app/Activity;II)V
    .locals 4
    .parameter "context"
    .parameter "c"
    .parameter "act"
    .parameter "centerSepPos"
    .parameter "centerFlag"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mCenterSepPos:I

    .line 63
    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mVoiceMailNumber:Ljava/lang/String;

    .line 71
    iput v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->idxFreqName:I

    .line 72
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->idxFreqNumber:I

    .line 73
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->idxFerqContactId:I

    .line 74
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->idxFreqNameReversed:I

    .line 76
    iput p4, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mCenterSepPos:I

    .line 77
    iput p5, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mCenterSeprationFlag:I

    .line 79
    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 81
    iput-object p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mContext:Landroid/content/Context;

    .line 83
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mVoiceMailNumber:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "orderof"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mIsReversedName:Z

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mItemCheck:Ljava/util/ArrayList;

    .line 86
    return-void

    :cond_0
    move v0, v2

    .line 84
    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 39
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 123
    if-nez p3, :cond_1

    .line 337
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 126
    .restart local p1
    :cond_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v36

    .line 128
    .local v36, position:I
    const/4 v7, 0x0

    move-object/from16 v0, p3

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/16 v8, -0xa

    if-eq v7, v8, :cond_2

    const/4 v7, 0x0

    move-object/from16 v0, p3

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/16 v8, -0xf

    if-ne v7, v8, :cond_7

    .line 129
    :cond_2
    const v7, 0x7f0600a4

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 130
    .local v17, Seperate:Landroid/widget/TextView;
    if-eqz v17, :cond_4

    .line 131
    const/4 v7, 0x0

    move-object/from16 v0, p3

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/16 v8, -0xa

    if-ne v7, v8, :cond_5

    .line 132
    if-lez v36, :cond_3

    .line 133
    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mCenterSepPos:I

    .line 135
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mContext:Landroid/content/Context;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09003d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    .end local v17           #Seperate:Landroid/widget/TextView;
    :cond_4
    :goto_1
    const/4 v7, 0x0

    move-object/from16 v0, p3

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 333
    .local v22, contactId:Ljava/lang/Integer;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_0

    .line 334
    const v7, 0x7f0600aa

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/CheckBox;

    .line 335
    .local v20, cb:Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mItemCheck:Ljava/util/ArrayList;

    move-object v7, v0

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    move-object/from16 v0, v20

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 137
    .end local v20           #cb:Landroid/widget/CheckBox;
    .end local v22           #contactId:Ljava/lang/Integer;
    .restart local v17       #Seperate:Landroid/widget/TextView;
    :cond_5
    if-eqz v36, :cond_6

    .line 138
    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mCenterSepPos:I

    .line 140
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mContext:Landroid/content/Context;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09003e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 144
    .end local v17           #Seperate:Landroid/widget/TextView;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mCenterSepPos:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mCenterSeprationFlag:I

    move v8, v0

    move/from16 v0, v36

    move v1, v7

    move v2, v8

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getIsFrequentView(III)Z

    move-result v24

    .line 145
    .local v24, isFrequentView:Z
    if-eqz v24, :cond_13

    .line 147
    const/4 v7, 0x0

    move-object/from16 v0, p3

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/16 v8, -0x64

    if-ne v7, v8, :cond_8

    .line 148
    const v7, 0x7f0600ac

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 149
    const v7, 0x7f0600bb

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 150
    const v7, 0x7f0600bb

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mContext:Landroid/content/Context;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090047

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 155
    .restart local p1
    :cond_8
    const v7, 0x7f0600b1

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 156
    const v7, 0x7f0600b5

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 158
    const v7, 0x7f0600b0

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/ImageView;

    .line 161
    .local v35, photoView:Landroid/widget/ImageView;
    const v7, 0x7f0600b7

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 162
    .local v26, nameText:Landroid/widget/TextView;
    const v7, 0x7f0600b9

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 165
    .local v29, numberText:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->idxFreqNumber:I

    move v7, v0

    move-object/from16 v0, p3

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 166
    .local v38, strNumber:Ljava/lang/String;
    const-string v7, "-1"

    move-object/from16 v0, v38

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 167
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090030

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 175
    :cond_9
    :goto_2
    const/4 v15, 0x0

    .line 176
    .local v15, Logname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mIsReversedName:Z

    move v7, v0

    if-eqz v7, :cond_10

    .line 177
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->idxFreqName:I

    move v7, v0

    move-object/from16 v0, p3

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 182
    :goto_3
    if-eqz v15, :cond_11

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_11

    .line 183
    move-object/from16 v0, v26

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :goto_4
    move-object/from16 v0, v29

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    const/16 v18, 0x1

    .line 191
    .local v18, bNoImg:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->idxFerqContactId:I

    move v7, v0

    move-object/from16 v0, p3

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 194
    .local v13, ContactId:Ljava/lang/Integer;
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_b

    .line 195
    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 196
    .local v5, uri:Landroid/net/Uri;
    const/4 v7, 0x3

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "photo_id"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "lookup"

    aput-object v8, v6, v7

    .line 198
    .local v6, projection:[Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    .line 199
    .local v19, buffer:Ljava/lang/StringBuffer;
    const-string v7, "_id"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    const-string v7, "=?"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 204
    .local v4, resolver:Landroid/content/ContentResolver;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 211
    .local v21, contactCursor:Landroid/database/Cursor;
    if-eqz v21, :cond_b

    .line 212
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-eqz v7, :cond_a

    .line 213
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    .line 215
    const-string v7, "photo_id"

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 216
    .local v23, idx:I
    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 218
    .local v34, photoId:I
    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide v8, v0

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    const/4 v7, 0x1

    new-array v9, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v10, "data15"

    aput-object v10, v9, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v4

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v32

    .line 224
    .local v32, photoCursor:Landroid/database/Cursor;
    if-eqz v32, :cond_a

    .line 225
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-eqz v7, :cond_12

    .line 226
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToFirst()Z

    .line 227
    const/4 v7, 0x0

    move-object/from16 v0, v32

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v33

    .line 228
    .local v33, photoData:[B
    const/4 v7, 0x0

    move-object/from16 v0, v33

    array-length v0, v0

    move v8, v0

    const/4 v9, 0x0

    move-object/from16 v0, v33

    move v1, v7

    move v2, v8

    move-object v3, v9

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v31

    .line 229
    .local v31, photoBm:Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    move-object/from16 v0, v35

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    move-object/from16 v0, v35

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 231
    const/16 v18, 0x0

    .line 238
    .end local v31           #photoBm:Landroid/graphics/Bitmap;
    .end local v33           #photoData:[B
    :goto_5
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 241
    .end local v23           #idx:I
    .end local v32           #photoCursor:Landroid/database/Cursor;
    .end local v34           #photoId:I
    :cond_a
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 242
    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 246
    .end local v4           #resolver:Landroid/content/ContentResolver;
    .end local v5           #uri:Landroid/net/Uri;
    .end local v6           #projection:[Ljava/lang/String;
    .end local v19           #buffer:Ljava/lang/StringBuffer;
    .end local v21           #contactCursor:Landroid/database/Cursor;
    :cond_b
    if-eqz v18, :cond_c

    .line 248
    const/4 v7, 0x0

    move-object/from16 v0, v35

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    const v7, 0x7f0200eb

    move-object/from16 v0, v35

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 250
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    .line 251
    .local v28, noContactId:Ljava/lang/Integer;
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 256
    .end local v28           #noContactId:Ljava/lang/Integer;
    :cond_c
    invoke-static/range {v38 .. v38}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 257
    const v7, 0x7f090033

    move-object/from16 v0, v26

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 258
    move-object/from16 v0, v29

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mVoiceMailNumber:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, v38

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 264
    const v7, 0x7f09002f

    move-object/from16 v0, v26

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 265
    move-object/from16 v0, v29

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 169
    .end local v13           #ContactId:Ljava/lang/Integer;
    .end local v15           #Logname:Ljava/lang/String;
    .end local v18           #bNoImg:Z
    :cond_e
    const-string v7, "-2"

    move-object/from16 v0, v38

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 170
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090031

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    goto/16 :goto_2

    .line 172
    :cond_f
    const-string v7, "-3"

    move-object/from16 v0, v38

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 173
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090032

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    goto/16 :goto_2

    .line 179
    .restart local v15       #Logname:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->idxFreqNameReversed:I

    move v7, v0

    move-object/from16 v0, p3

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3

    .line 185
    :cond_11
    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 234
    .restart local v4       #resolver:Landroid/content/ContentResolver;
    .restart local v5       #uri:Landroid/net/Uri;
    .restart local v6       #projection:[Ljava/lang/String;
    .restart local v13       #ContactId:Ljava/lang/Integer;
    .restart local v18       #bNoImg:Z
    .restart local v19       #buffer:Ljava/lang/StringBuffer;
    .restart local v21       #contactCursor:Landroid/database/Cursor;
    .restart local v23       #idx:I
    .restart local v32       #photoCursor:Landroid/database/Cursor;
    .restart local v34       #photoId:I
    :cond_12
    const/4 v7, 0x0

    move-object/from16 v0, v35

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    const v7, 0x7f0200eb

    move-object/from16 v0, v35

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 236
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 270
    .end local v4           #resolver:Landroid/content/ContentResolver;
    .end local v5           #uri:Landroid/net/Uri;
    .end local v6           #projection:[Ljava/lang/String;
    .end local v13           #ContactId:Ljava/lang/Integer;
    .end local v15           #Logname:Ljava/lang/String;
    .end local v18           #bNoImg:Z
    .end local v19           #buffer:Ljava/lang/StringBuffer;
    .end local v21           #contactCursor:Landroid/database/Cursor;
    .end local v23           #idx:I
    .end local v26           #nameText:Landroid/widget/TextView;
    .end local v29           #numberText:Landroid/widget/TextView;
    .end local v32           #photoCursor:Landroid/database/Cursor;
    .end local v34           #photoId:I
    .end local v35           #photoView:Landroid/widget/ImageView;
    .end local v38           #strNumber:Ljava/lang/String;
    :cond_13
    const/4 v7, 0x0

    move-object/from16 v0, p3

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/16 v8, -0x64

    if-ne v7, v8, :cond_14

    .line 271
    const v7, 0x7f0600ac

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 272
    const v7, 0x7f0600bb

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 273
    const v7, 0x7f0600bb

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mContext:Landroid/content/Context;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090048

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 278
    .restart local p1
    :cond_14
    const v7, 0x7f0600b1

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 279
    const v7, 0x7f0600b5

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 281
    const v7, 0x7f0600b2

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 283
    .local v27, nameView:Landroid/widget/TextView;
    new-instance v25, Landroid/database/CharArrayBuffer;

    const/16 v7, 0x80

    move-object/from16 v0, v25

    move v1, v7

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    .line 285
    .local v25, nameBuffer:Landroid/database/CharArrayBuffer;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mIsReversedName:Z

    move v7, v0

    if-eqz v7, :cond_17

    .line 286
    const/4 v7, 0x1

    move-object/from16 v0, p3

    move v1, v7

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 290
    :goto_6
    move-object/from16 v0, v25

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v37, v0

    .line 291
    .local v37, size:I
    if-eqz v37, :cond_18

    .line 292
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    move-object v7, v0

    const/4 v8, 0x0

    move-object/from16 v0, v27

    move-object v1, v7

    move v2, v8

    move/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->setText([CII)V

    .line 297
    :goto_7
    const/16 v30, 0x0

    .line 299
    .local v30, photo:Landroid/graphics/Bitmap;
    const/4 v7, 0x4

    move-object/from16 v0, p3

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 301
    .local v16, PhotoID:I
    const/16 v32, 0x0

    .line 305
    .restart local v32       #photoCursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mContext:Landroid/content/Context;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide v9, v0

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "data15"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v32

    .line 309
    if-eqz v32, :cond_15

    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_15

    const/4 v7, 0x0

    move-object/from16 v0, v32

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_15

    .line 311
    const/4 v7, 0x0

    move-object/from16 v0, v32

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v33

    .line 312
    .restart local v33       #photoData:[B
    const/4 v7, 0x0

    move-object/from16 v0, v33

    array-length v0, v0

    move v8, v0

    const/4 v9, 0x0

    move-object/from16 v0, v33

    move v1, v7

    move v2, v8

    move-object v3, v9

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v30

    .line 317
    .end local v33           #photoData:[B
    :cond_15
    if-eqz v32, :cond_16

    .line 319
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 322
    :cond_16
    const v7, 0x7f0600b0

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/ImageView;

    .line 323
    .restart local v35       #photoView:Landroid/widget/ImageView;
    const/4 v7, 0x0

    move-object/from16 v0, p3

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 324
    .local v14, Id:Ljava/lang/Integer;
    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 325
    if-eqz v30, :cond_1a

    .line 326
    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 288
    .end local v14           #Id:Ljava/lang/Integer;
    .end local v16           #PhotoID:I
    .end local v30           #photo:Landroid/graphics/Bitmap;
    .end local v32           #photoCursor:Landroid/database/Cursor;
    .end local v35           #photoView:Landroid/widget/ImageView;
    .end local v37           #size:I
    :cond_17
    const/4 v7, 0x5

    move-object/from16 v0, p3

    move v1, v7

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    goto/16 :goto_6

    .line 294
    .restart local v37       #size:I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mContext:Landroid/content/Context;

    move-object v7, v0

    const v8, 0x104000e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, v27

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 317
    .restart local v16       #PhotoID:I
    .restart local v30       #photo:Landroid/graphics/Bitmap;
    .restart local v32       #photoCursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v7

    if-eqz v32, :cond_19

    .line 319
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    :cond_19
    throw v7

    .line 328
    .restart local v14       #Id:Ljava/lang/Integer;
    .restart local v35       #photoView:Landroid/widget/ImageView;
    :cond_1a
    const v7, 0x7f0200eb

    move-object/from16 v0, v35

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1
.end method

.method public getItemCheckedArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mItemCheck:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 355
    if-eqz p2, :cond_1

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v1, -0xa

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v1, -0xf

    if-ne v0, v1, :cond_2

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f03000f

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 362
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 359
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f030017

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 367
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    move v0, v1

    .line 379
    :goto_0
    return v0

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-gez v0, :cond_2

    move v0, v1

    .line 373
    goto :goto_0

    .line 375
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 379
    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "viewGroup"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, view:Landroid/view/View;
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v2, -0xa

    if-eq v1, v2, :cond_0

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v2, -0xf

    if-ne v1, v2, :cond_1

    .line 343
    :cond_0
    const v1, 0x7f03000f

    invoke-static {p1, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 348
    :goto_0
    return-object v0

    .line 345
    :cond_1
    const v1, 0x7f030017

    invoke-static {p1, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public setItemChecked(IZ)V
    .locals 3
    .parameter "pos"
    .parameter "check"

    .prologue
    .line 110
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 112
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 113
    .local v0, id:Ljava/lang/Integer;
    if-eqz p2, :cond_0

    .line 114
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mItemCheck:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mItemCheck:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setItemChecked(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mItemCheck:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 97
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mItemCheck:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 98
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 102
    .local v0, existIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 103
    .local v1, id:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_1

    .line 104
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteCursorAdapter;->mItemCheck:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    .line 107
    return-void
.end method
