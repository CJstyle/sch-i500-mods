.class public Lcom/android/browser/AddBookmarkPage;
.super Landroid/app/Activity;
.source "AddBookmarkPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;
    }
.end annotation


# static fields
.field private static final SAVE_BOOKMARK:I = 0x64


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private mAddress:Landroid/widget/EditText;

.field private mButton:Landroid/widget/TextView;

.field private mCancel:Landroid/view/View$OnClickListener;

.field private mCancelButton:Landroid/view/View;

.field private mCursor:Landroid/database/Cursor;

.field private mEditingExisting:Z

.field private mFolderCount:I

.field private mFolderSpinner:Landroid/widget/Spinner;

.field private mFolders:[Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mMap:Landroid/os/Bundle;

.field private mOriginalUrl:Ljava/lang/String;

.field private mSaveBookmark:Landroid/view/View$OnClickListener;

.field private mSelectListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mThumbnail:Landroid/graphics/Bitmap;

.field private mTitle:Landroid/widget/EditText;

.field private mTouchIconUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    const-string v0, "Bookmarks"

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->LOGTAG:Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/android/browser/AddBookmarkPage$1;

    invoke-direct {v0, p0}, Lcom/android/browser/AddBookmarkPage$1;-><init>(Lcom/android/browser/AddBookmarkPage;)V

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mSaveBookmark:Landroid/view/View$OnClickListener;

    .line 84
    new-instance v0, Lcom/android/browser/AddBookmarkPage$2;

    invoke-direct {v0, p0}, Lcom/android/browser/AddBookmarkPage$2;-><init>(Lcom/android/browser/AddBookmarkPage;)V

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mCancel:Landroid/view/View$OnClickListener;

    .line 175
    new-instance v0, Lcom/android/browser/AddBookmarkPage$3;

    invoke-direct {v0, p0}, Lcom/android/browser/AddBookmarkPage$3;-><init>(Lcom/android/browser/AddBookmarkPage;)V

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mSelectListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/AddBookmarkPage;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method private createHandler()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Lcom/android/browser/AddBookmarkPage$4;

    invoke-direct {v0, p0}, Lcom/android/browser/AddBookmarkPage$4;-><init>(Lcom/android/browser/AddBookmarkPage;)V

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mHandler:Landroid/os/Handler;

    .line 244
    :cond_0
    return-void
.end method


# virtual methods
.method public gotoSelected()V
    .locals 2

    .prologue
    .line 185
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mFolderSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 186
    .local v0, pos:I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19
    .parameter "icicle"

    .prologue
    .line 91
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const/4 v3, 0x3

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage;->requestWindowFeature(I)Z

    .line 93
    const v3, 0x7f030005

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage;->setContentView(I)V

    .line 94
    const v3, 0x7f090031

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage;->setTitle(I)V

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x3

    const v5, 0x7f02001e

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 97
    const/16 v17, 0x0

    .line 98
    .local v17, title:Ljava/lang/String;
    const/16 v18, 0x0

    .line 100
    .local v18, url:Ljava/lang/String;
    const/4 v12, 0x1

    .line 102
    .local v12, folder:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object v3, v0

    if-eqz v3, :cond_1

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object v3, v0

    const-string v4, "bookmark"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 105
    .local v11, b:Landroid/os/Bundle;
    if-eqz v11, :cond_0

    .line 106
    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    .line 107
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/browser/AddBookmarkPage;->mEditingExisting:Z

    .line 108
    const v3, 0x7f090032

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage;->setTitle(I)V

    .line 110
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object v3, v0

    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object v3, v0

    const-string v4, "url"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .end local v18           #url:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/AddBookmarkPage;->mOriginalUrl:Ljava/lang/String;

    .line 112
    .restart local v18       #url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object v3, v0

    const-string v4, "touch_icon_url"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/AddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object v3, v0

    const-string v4, "thumbnail"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/AddBookmarkPage;->mThumbnail:Landroid/graphics/Bitmap;

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object v3, v0

    const-string v4, "folder"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 117
    .end local v11           #b:Landroid/os/Bundle;
    :cond_1
    const v3, 0x7f0d0005

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 119
    const v3, 0x7f0d0014

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 123
    sget-object v4, Landroid/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/Browser;->FOLDER_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/browser/AddBookmarkPage;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/AddBookmarkPage;->mCursor:Landroid/database/Cursor;

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mCursor:Landroid/database/Cursor;

    move-object v3, v0

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/AddBookmarkPage;->mFolderCount:I

    .line 128
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/AddBookmarkPage;->mFolderCount:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/AddBookmarkPage;->mFolders:[Ljava/lang/String;

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mCursor:Landroid/database/Cursor;

    move-object v3, v0

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 130
    const/4 v15, 0x0

    .line 132
    .local v15, position:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 133
    .local v16, r:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mFolders:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    const v5, 0x7f090145

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 135
    const/4 v14, 0x1

    .local v14, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/AddBookmarkPage;->mFolderCount:I

    move v3, v0

    if-gt v14, v3, :cond_3

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mFolders:[Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mCursor:Landroid/database/Cursor;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v14

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mCursor:Landroid/database/Cursor;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 139
    .local v13, folderFromDB:I
    if-ne v13, v12, :cond_2

    .line 140
    move v15, v14

    .line 141
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mCursor:Landroid/database/Cursor;

    move-object v3, v0

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 135
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 143
    .end local v13           #folderFromDB:I
    :cond_3
    const v3, 0x7f0d0016

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/AddBookmarkPage;->mFolderSpinner:Landroid/widget/Spinner;

    .line 144
    new-instance v10, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    move-object v0, v10

    move-object/from16 v1, p0

    move v2, v3

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 145
    .local v10, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const/4 v14, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/AddBookmarkPage;->mFolderCount:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    if-ge v14, v3, :cond_4

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mFolders:[Ljava/lang/String;

    move-object v3, v0

    aget-object v3, v3, v14

    invoke-virtual {v10, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 145
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 149
    :cond_4
    const v3, 0x1090009

    invoke-virtual {v10, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mFolderSpinner:Landroid/widget/Spinner;

    move-object v3, v0

    invoke-virtual {v3, v10}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mFolderSpinner:Landroid/widget/Spinner;

    move-object v3, v0

    invoke-virtual {v3, v15}, Landroid/widget/Spinner;->setSelection(I)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mFolderSpinner:Landroid/widget/Spinner;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mSelectListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->gotoSelected()V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mSaveBookmark:Landroid/view/View$OnClickListener;

    move-object v9, v0

    .line 156
    .local v9, accept:Landroid/view/View$OnClickListener;
    const v3, 0x7f0d0017

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/AddBookmarkPage;->mButton:Landroid/widget/TextView;

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mButton:Landroid/widget/TextView;

    move-object v3, v0

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    const v3, 0x7f0d0018

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/AddBookmarkPage;->mCancelButton:Landroid/view/View;

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mCancelButton:Landroid/view/View;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mCancel:Landroid/view/View$OnClickListener;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_5

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mButton:Landroid/widget/TextView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    .line 165
    :cond_5
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 169
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 170
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 172
    return-void
.end method

.method save()Z
    .locals 23

    .prologue
    .line 250
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->createHandler()V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 253
    .local v16, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/browser/BrowserActivity;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 255
    .local v17, unfilteredUrl:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_3

    const/16 v20, 0x1

    move/from16 v6, v20

    .line 256
    .local v6, emptyTitle:Z
    :goto_0
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_4

    const/16 v20, 0x1

    move/from16 v7, v20

    .line 257
    .local v7, emptyUrl:Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 258
    .local v12, r:Landroid/content/res/Resources;
    if-nez v6, :cond_0

    if-eqz v7, :cond_5

    .line 259
    :cond_0
    if-eqz v6, :cond_1

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const v21, 0x7f09003c

    move-object v0, v12

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 262
    :cond_1
    if-eqz v7, :cond_2

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const v21, 0x7f09003d

    move-object v0, v12

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 265
    :cond_2
    const/16 v20, 0x0

    .line 347
    :goto_2
    return v20

    .line 255
    .end local v6           #emptyTitle:Z
    .end local v7           #emptyUrl:Z
    .end local v12           #r:Landroid/content/res/Resources;
    :cond_3
    const/16 v20, 0x0

    move/from16 v6, v20

    goto :goto_0

    .line 256
    .restart local v6       #emptyTitle:Z
    :cond_4
    const/16 v20, 0x0

    move/from16 v7, v20

    goto :goto_1

    .line 267
    .restart local v7       #emptyUrl:Z
    .restart local v12       #r:Landroid/content/res/Resources;
    :cond_5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 272
    .local v19, url:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    const-string v21, "javascript:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 273
    new-instance v18, Ljava/net/URI;

    invoke-direct/range {v18 .. v19}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 274
    .local v18, uriObj:Ljava/net/URI;
    invoke-virtual/range {v18 .. v18}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v13

    .line 275
    .local v13, scheme:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/browser/Bookmarks;->urlHasAcceptableScheme(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 279
    if-eqz v13, :cond_6

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const v21, 0x7f09003f

    move-object v0, v12

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    const/16 v20, 0x0

    goto :goto_2

    .line 285
    :cond_6
    :try_start_1
    new-instance v3, Landroid/net/WebAddress;

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/net/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 289
    .local v3, address:Landroid/net/WebAddress;
    :try_start_2
    move-object v0, v3

    iget-object v0, v0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_7

    .line 290
    new-instance v20, Ljava/net/URISyntaxException;

    const-string v21, ""

    const-string v22, ""

    invoke-direct/range {v20 .. v22}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v20
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    .line 295
    .end local v3           #address:Landroid/net/WebAddress;
    .end local v13           #scheme:Ljava/lang/String;
    .end local v18           #uriObj:Ljava/net/URI;
    :catch_0
    move-exception v20

    move-object/from16 v5, v20

    .line 296
    .local v5, e:Ljava/net/URISyntaxException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const v21, 0x7f09003e

    move-object v0, v12

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 297
    const/16 v20, 0x0

    goto :goto_2

    .line 286
    .end local v5           #e:Ljava/net/URISyntaxException;
    .restart local v13       #scheme:Ljava/lang/String;
    .restart local v18       #uriObj:Ljava/net/URI;
    :catch_1
    move-exception v20

    move-object/from16 v5, v20

    .line 287
    .local v5, e:Landroid/net/ParseException;
    :try_start_3
    new-instance v20, Ljava/net/URISyntaxException;

    const-string v21, ""

    const-string v22, ""

    invoke-direct/range {v20 .. v22}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v20

    .line 292
    .end local v5           #e:Landroid/net/ParseException;
    .restart local v3       #address:Landroid/net/WebAddress;
    :cond_7
    invoke-virtual {v3}, Landroid/net/WebAddress;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v19

    .line 301
    .end local v3           #address:Landroid/net/WebAddress;
    .end local v13           #scheme:Ljava/lang/String;
    .end local v18           #uriObj:Ljava/net/URI;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mFolderSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 302
    .local v14, spinnerText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    .line 303
    const/4 v8, 0x0

    .line 304
    .local v8, folder:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/AddBookmarkPage;->mFolderCount:I

    move/from16 v20, v0

    move v0, v10

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 307
    .local v9, folderText:Ljava/lang/String;
    invoke-virtual {v14, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_a

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 316
    .end local v9           #folderText:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/AddBookmarkPage;->mEditingExisting:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object/from16 v20, v0

    const-string v21, "title"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object/from16 v20, v0

    const-string v21, "url"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object/from16 v20, v0

    const-string v21, "invalidateThumbnail"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mOriginalUrl:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_b

    const/16 v22, 0x1

    :goto_4
    invoke-virtual/range {v20 .. v22}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object/from16 v20, v0

    const-string v21, "folder"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 322
    const/16 v20, -0x1

    new-instance v21, Landroid/content/Intent;

    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->getIntent()Landroid/content/Intent;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/AddBookmarkPage;->setResult(ILandroid/content/Intent;)V

    .line 346
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 347
    const/16 v20, 0x1

    goto/16 :goto_2

    .line 312
    .restart local v9       #folderText:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    .line 304
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 319
    .end local v9           #folderText:Ljava/lang/String;
    :cond_b
    const/16 v22, 0x0

    goto :goto_4

    .line 326
    :cond_c
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 327
    .local v4, bundle:Landroid/os/Bundle;
    const-string v20, "title"

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v20, "url"

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v20, "thumbnail"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mThumbnail:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 330
    const-string v20, "invalidateThumbnail"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mOriginalUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_d

    const/16 v21, 0x1

    :goto_6
    move-object v0, v4

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 331
    const-string v20, "touchIconUrl"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v20, "folder"

    move-object v0, v4

    move-object/from16 v1, v20

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x64

    invoke-static/range {v20 .. v21}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v11

    .line 335
    .local v11, msg:Landroid/os/Message;
    invoke-virtual {v11, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 337
    new-instance v15, Ljava/lang/Thread;

    new-instance v20, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;-><init>(Lcom/android/browser/AddBookmarkPage;Landroid/os/Message;)V

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 338
    .local v15, t:Ljava/lang/Thread;
    invoke-virtual {v15}, Ljava/lang/Thread;->start()V

    .line 340
    const/16 v20, -0x1

    new-instance v21, Landroid/content/Intent;

    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->getIntent()Landroid/content/Intent;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/AddBookmarkPage;->setResult(ILandroid/content/Intent;)V

    .line 343
    const-string v20, "bookmarkview"

    invoke-static/range {v19 .. v20}, Lcom/android/browser/LogTag;->logBookmarkAdded(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 330
    .end local v11           #msg:Landroid/os/Message;
    .end local v15           #t:Ljava/lang/Thread;
    :cond_d
    const/16 v21, 0x0

    goto :goto_6
.end method
