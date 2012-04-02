.class public Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "FrequentGridDeleteCursorAdapter.java"


# static fields
.field static final PHONES_PROJECTION:[Ljava/lang/String;


# instance fields
.field ROW_LENGTH:I

.field private iDataTypeTag:I

.field idxFavoName:I

.field idxFavoNameReversed:I

.field idxFerqContactId:I

.field idxFreqName:I

.field idxFreqNameReversed:I

.field idxFreqNumber:I

.field public mContext:Landroid/content/Context;

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

.field mVoiceMailNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "display_name_reverse"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/app/Activity;I)V
    .locals 5
    .parameter "context"
    .parameter "c"
    .parameter "act"
    .parameter "iDataType"

    .prologue
    const/4 v2, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 69
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->mVoiceMailNumber:Ljava/lang/String;

    .line 79
    iput v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->iDataTypeTag:I

    .line 86
    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->idxFreqNumber:I

    .line 87
    iput v4, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->idxFreqName:I

    .line 88
    iput v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->idxFreqNameReversed:I

    .line 89
    const/4 v1, 0x4

    iput v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->idxFerqContactId:I

    .line 90
    iput v4, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->idxFavoName:I

    .line 91
    iput v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->idxFavoNameReversed:I

    .line 93
    iput p4, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->iDataTypeTag:I

    .line 94
    iput-object p2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 95
    iput-object p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->mContext:Landroid/content/Context;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 97
    .local v0, draw:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->ROW_LENGTH:I

    .line 99
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->mVoiceMailNumber:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "orderof"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->mIsReversedName:Z

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->mItemCheck:Ljava/util/ArrayList;

    .line 102
    return-void

    :cond_0
    move v1, v3

    .line 100
    goto :goto_0
.end method

.method private SearchPhoto(ILandroid/widget/RelativeLayout;)V
    .locals 18
    .parameter "ContactId"
    .parameter "view"

    .prologue
    .line 142
    if-nez p2, :cond_1

    .line 143
    const-string v5, ""

    const-string v6, "========== view is null ============"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    const v5, 0x7f0600a9

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 147
    .local v17, photoView:Landroid/widget/ImageView;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .line 148
    .local v13, lp:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->ROW_LENGTH:I

    move v5, v0

    iput v5, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 149
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->ROW_LENGTH:I

    move v5, v0

    iput v5, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 150
    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    const/4 v8, 0x1

    .line 152
    .local v8, bNoImg:Z
    invoke-virtual/range {p2 .. p2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 154
    .local v14, myResources:Landroid/content/res/Resources;
    if-eqz p1, :cond_3

    .line 155
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 156
    .local v3, uri:Landroid/net/Uri;
    const/4 v5, 0x3

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "photo_id"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "lookup"

    aput-object v6, v4, v5

    .line 158
    .local v4, projection:[Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 159
    .local v10, buffer:Ljava/lang/StringBuffer;
    const-string v5, "_id"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    const-string v5, "=?"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 164
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 171
    .local v11, contactCursor:Landroid/database/Cursor;
    if-eqz v11, :cond_3

    .line 172
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-eqz v5, :cond_2

    .line 173
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 175
    const-string v5, "photo_id"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 176
    .local v12, idx:I
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 179
    .local v16, photoId:I
    invoke-virtual/range {p2 .. p2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide v6, v0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/sec/android/app/dialertab/dialer/ContactsUtils;->loadContactPhoto(Landroid/content/Context;JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .end local v8           #bNoImg:Z
    move-result-object v15

    .line 181
    .local v15, photoBm:Landroid/graphics/Bitmap;
    if-eqz v15, :cond_4

    .line 182
    move-object/from16 v0, v17

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 183
    const/4 v8, 0x0

    .line 189
    .end local v12           #idx:I
    .end local v15           #photoBm:Landroid/graphics/Bitmap;
    .end local v16           #photoId:I
    .restart local v8       #bNoImg:Z
    :cond_2
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 192
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #projection:[Ljava/lang/String;
    .end local v10           #buffer:Ljava/lang/StringBuffer;
    .end local v11           #contactCursor:Landroid/database/Cursor;
    :cond_3
    if-eqz v8, :cond_0

    .line 194
    const v5, 0x7f0200ea

    invoke-virtual {v14, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 195
    .local v9, bg:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 186
    .end local v8           #bNoImg:Z
    .end local v9           #bg:Landroid/graphics/drawable/Drawable;
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v4       #projection:[Ljava/lang/String;
    .restart local v10       #buffer:Ljava/lang/StringBuffer;
    .restart local v11       #contactCursor:Landroid/database/Cursor;
    .restart local v12       #idx:I
    .restart local v15       #photoBm:Landroid/graphics/Bitmap;
    .restart local v16       #photoId:I
    :cond_4
    const/4 v8, 0x1

    .restart local v8       #bNoImg:Z
    goto :goto_1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 20
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 201
    if-nez p3, :cond_0

    .line 273
    .end local p2
    :goto_0
    return-void

    .line 204
    .restart local p2
    :cond_0
    const v5, 0x7f0600a1

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 205
    .local v18, nameText:Landroid/widget/TextView;
    const/4 v7, 0x0

    .line 206
    .local v7, number:Ljava/lang/String;
    const/4 v8, 0x0

    .line 207
    .local v8, name:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 209
    .local v15, ContactId:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->iDataTypeTag:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    .line 210
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->idxFerqContactId:I

    move v5, v0

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 211
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->idxFreqNumber:I

    move v5, v0

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 213
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->mIsReversedName:Z

    move v5, v0

    if-eqz v5, :cond_4

    .line 214
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->idxFreqName:I

    move v5, v0

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 219
    :goto_1
    const-string v5, "-1"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 220
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090030

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 226
    :cond_1
    :goto_2
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_7

    .line 227
    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    :goto_3
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 235
    const v5, 0x7f090033

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 240
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->mVoiceMailNumber:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v7, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 241
    const v5, 0x7f09002f

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 261
    :cond_3
    :goto_4
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/RelativeLayout;

    move-object/from16 p2, v0

    .end local p2
    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->SearchPhoto(ILandroid/widget/RelativeLayout;)V

    .line 263
    const/4 v4, 0x0

    .line 265
    .local v4, TagData:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->iDataTypeTag:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_b

    .line 266
    new-instance v4, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;

    .end local v4           #TagData:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->iDataTypeTag:I

    move v5, v0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    .line 270
    .restart local v4       #TagData:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;
    :goto_5
    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 271
    const v5, 0x7f0600aa

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/CheckBox;

    .line 272
    .local v16, cb:Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->mItemCheck:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 216
    .end local v4           #TagData:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;
    .end local v16           #cb:Landroid/widget/CheckBox;
    .restart local p2
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->idxFreqNameReversed:I

    move v5, v0

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 221
    :cond_5
    const-string v5, "-2"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 222
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090031

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 223
    :cond_6
    const-string v5, "-3"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 224
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090032

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 229
    :cond_7
    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 244
    :cond_8
    new-instance v17, Landroid/database/CharArrayBuffer;

    const/16 v5, 0x80

    move-object/from16 v0, v17

    move v1, v5

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    .line 245
    .local v17, nameBuffer:Landroid/database/CharArrayBuffer;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->mIsReversedName:Z

    move v5, v0

    if-eqz v5, :cond_9

    .line 246
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->idxFavoName:I

    move v5, v0

    move-object/from16 v0, p3

    move v1, v5

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 250
    :goto_6
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 251
    move-object/from16 v0, v17

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v19, v0

    .line 252
    .local v19, size:I
    if-eqz v19, :cond_a

    .line 253
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, v18

    move-object v1, v5

    move v2, v6

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->setText([CII)V

    .line 258
    :goto_7
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto/16 :goto_4

    .line 248
    .end local v19           #size:I
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->idxFavoNameReversed:I

    move v5, v0

    move-object/from16 v0, p3

    move v1, v5

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    goto :goto_6

    .line 255
    .restart local v19       #size:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->mContext:Landroid/content/Context;

    move-object v5, v0

    const v6, 0x104000e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 268
    .end local v17           #nameBuffer:Landroid/database/CharArrayBuffer;
    .end local v19           #size:I
    .end local p2
    .restart local v4       #TagData:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;
    :cond_b
    new-instance v4, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;

    .end local v4           #TagData:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->iDataTypeTag:I

    move v10, v0

    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v9, v4

    move-object v13, v8

    invoke-direct/range {v9 .. v14}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    .restart local v4       #TagData:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;
    goto/16 :goto_5
.end method

.method public changeCursor(Landroid/database/Cursor;I)V
    .locals 0
    .parameter "cursor"
    .parameter "iDataType"

    .prologue
    .line 294
    iput p2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->iDataTypeTag:I

    .line 295
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 296
    return-void
.end method

.method public getDataTypeTag()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->iDataTypeTag:I

    return v0
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
    .line 139
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->mItemCheck:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 279
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f030010

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 280
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 282
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 288
    const v1, 0x7f030010

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 290
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public setItemChecked(IZ)V
    .locals 3
    .parameter "pos"
    .parameter "check"

    .prologue
    .line 124
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 126
    iget v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->iDataTypeTag:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 127
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->idxFerqContactId:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 132
    .local v0, id:Ljava/lang/Integer;
    :goto_0
    if-eqz p2, :cond_1

    .line 133
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->mItemCheck:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :goto_1
    return-void

    .line 129
    .end local v0           #id:Ljava/lang/Integer;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .restart local v0       #id:Ljava/lang/Integer;
    goto :goto_0

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->mItemCheck:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1
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
    .line 107
    .local p1, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->mItemCheck:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 108
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    .line 122
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->mItemCheck:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 111
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 114
    .local v0, existIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    iget v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->iDataTypeTag:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 115
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->idxFerqContactId:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 119
    .local v1, id:Ljava/lang/Integer;
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 121
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->mItemCheck:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 117
    .end local v1           #id:Ljava/lang/Integer;
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .restart local v1       #id:Ljava/lang/Integer;
    goto :goto_1
.end method
