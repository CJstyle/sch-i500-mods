.class public Lcom/android/browser/AddBookmarkPage;
.super Landroid/app/Activity;
.source "AddBookmarkPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;
    }
.end annotation


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
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const-string v0, "Bookmarks"

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->LOGTAG:Ljava/lang/String;

    .line 81
    new-instance v0, Lcom/android/browser/AddBookmarkPage$1;

    invoke-direct {v0, p0}, Lcom/android/browser/AddBookmarkPage$1;-><init>(Lcom/android/browser/AddBookmarkPage;)V

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mSaveBookmark:Landroid/view/View$OnClickListener;

    .line 93
    new-instance v0, Lcom/android/browser/AddBookmarkPage$2;

    invoke-direct {v0, p0}, Lcom/android/browser/AddBookmarkPage$2;-><init>(Lcom/android/browser/AddBookmarkPage;)V

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mCancel:Landroid/view/View$OnClickListener;

    .line 182
    new-instance v0, Lcom/android/browser/AddBookmarkPage$3;

    invoke-direct {v0, p0}, Lcom/android/browser/AddBookmarkPage$3;-><init>(Lcom/android/browser/AddBookmarkPage;)V

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mSelectListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 230
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/AddBookmarkPage;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/AddBookmarkPage;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method private createHandler()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Lcom/android/browser/AddBookmarkPage$4;

    invoke-direct {v0, p0}, Lcom/android/browser/AddBookmarkPage$4;-><init>(Lcom/android/browser/AddBookmarkPage;)V

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mHandler:Landroid/os/Handler;

    .line 282
    :cond_0
    return-void
.end method


# virtual methods
.method public gotoSelected()V
    .locals 2

    .prologue
    .line 192
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mFolderSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 193
    .local v0, pos:I
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "newConfig"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 204
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 206
    iget-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, title:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/browser/BrowserActivity;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 210
    .local v4, unfilteredUrl:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    move v0, v7

    .line 211
    .local v0, emptyTitle:Z
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    move v1, v7

    .line 212
    .local v1, emptyUrl:Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 214
    .local v2, r:Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 215
    iget-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    if-eqz v5, :cond_0

    .line 216
    iget-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    const v6, 0x7f09003c

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 219
    :cond_0
    if-eqz v1, :cond_1

    .line 220
    iget-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    if-eqz v5, :cond_1

    .line 221
    iget-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    const v6, 0x7f09003d

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 225
    :cond_1
    return-void

    .end local v0           #emptyTitle:Z
    .end local v1           #emptyUrl:Z
    .end local v2           #r:Landroid/content/res/Resources;
    :cond_2
    move v0, v6

    .line 210
    goto :goto_0

    .restart local v0       #emptyTitle:Z
    :cond_3
    move v1, v6

    .line 211
    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19
    .parameter "icicle"

    .prologue
    .line 104
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const/4 v3, 0x3

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage;->requestWindowFeature(I)Z

    .line 106
    const v3, 0x7f030007

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage;->setContentView(I)V

    .line 107
    const v3, 0x7f090031

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage;->setTitle(I)V

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x3

    const v5, 0x7f020026

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 110
    const/16 v17, 0x0

    .line 111
    .local v17, title:Ljava/lang/String;
    const/16 v18, 0x0

    .line 113
    .local v18, url:Ljava/lang/String;
    const/4 v12, 0x1

    .line 115
    .local v12, folder:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object v3, v0

    if-eqz v3, :cond_1

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object v3, v0

    const-string v4, "bookmark"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 118
    .local v11, b:Landroid/os/Bundle;
    if-eqz v11, :cond_0

    .line 119
    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    .line 120
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/browser/AddBookmarkPage;->mEditingExisting:Z

    .line 121
    const v3, 0x7f090032

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage;->setTitle(I)V

    .line 123
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object v3, v0

    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 124
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

    .line 125
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

    .line 126
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

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object v3, v0

    const-string v4, "folder"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 130
    .end local v11           #b:Landroid/os/Bundle;
    :cond_1
    const v3, 0x7f0d0007

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 132
    const v3, 0x7f0d001a

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 136
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

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mCursor:Landroid/database/Cursor;

    move-object v3, v0

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/AddBookmarkPage;->mFolderCount:I

    .line 141
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/AddBookmarkPage;->mFolderCount:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/AddBookmarkPage;->mFolders:[Ljava/lang/String;

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mCursor:Landroid/database/Cursor;

    move-object v3, v0

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 143
    const/4 v15, 0x0

    .line 145
    .local v15, position:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 146
    .local v16, r:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mFolders:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    const v5, 0x7f090146

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 148
    const/4 v14, 0x1

    .local v14, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/AddBookmarkPage;->mFolderCount:I

    move v3, v0

    if-gt v14, v3, :cond_3

    .line 150
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

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mCursor:Landroid/database/Cursor;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 152
    .local v13, folderFromDB:I
    if-ne v13, v12, :cond_2

    .line 153
    move v15, v14

    .line 154
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mCursor:Landroid/database/Cursor;

    move-object v3, v0

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 148
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 156
    .end local v13           #folderFromDB:I
    :cond_3
    const v3, 0x7f0d001c

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/AddBookmarkPage;->mFolderSpinner:Landroid/widget/Spinner;

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mFolderSpinner:Landroid/widget/Spinner;

    move-object v3, v0

    const v4, 0x7f09013e

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 158
    new-instance v10, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    move-object v0, v10

    move-object/from16 v1, p0

    move v2, v3

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 159
    .local v10, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const/4 v14, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/AddBookmarkPage;->mFolderCount:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    if-ge v14, v3, :cond_4

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mFolders:[Ljava/lang/String;

    move-object v3, v0

    aget-object v3, v3, v14

    invoke-virtual {v10, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 159
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 163
    :cond_4
    const v3, 0x1090009

    invoke-virtual {v10, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mFolderSpinner:Landroid/widget/Spinner;

    move-object v3, v0

    invoke-virtual {v3, v10}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mFolderSpinner:Landroid/widget/Spinner;

    move-object v3, v0

    invoke-virtual {v3, v15}, Landroid/widget/Spinner;->setSelection(I)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mFolderSpinner:Landroid/widget/Spinner;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mSelectListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->gotoSelected()V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mSaveBookmark:Landroid/view/View$OnClickListener;

    move-object v9, v0

    .line 170
    .local v9, accept:Landroid/view/View$OnClickListener;
    const v3, 0x7f0d001d

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/AddBookmarkPage;->mButton:Landroid/widget/TextView;

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mButton:Landroid/widget/TextView;

    move-object v3, v0

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    const v3, 0x7f0d001e

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/AddBookmarkPage;->mCancelButton:Landroid/view/View;

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mCancelButton:Landroid/view/View;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mCancel:Landroid/view/View$OnClickListener;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_5

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mButton:Landroid/widget/TextView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    .line 179
    :cond_5
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 198
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 200
    return-void
.end method

.method save()Z
    .locals 28

    .prologue
    .line 288
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->createHandler()V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    .line 291
    .local v24, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/browser/BrowserActivity;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 293
    .local v25, unfilteredUrl:Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    move v14, v3

    .line 294
    .local v14, emptyTitle:Z
    :goto_0
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    move v15, v3

    .line 295
    .local v15, emptyUrl:Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 296
    .local v20, r:Landroid/content/res/Resources;
    if-nez v14, :cond_0

    if-eqz v15, :cond_5

    .line 297
    :cond_0
    if-eqz v14, :cond_1

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    move-object v3, v0

    const v4, 0x7f09003c

    move-object/from16 v0, v20

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 300
    :cond_1
    if-eqz v15, :cond_2

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    move-object v3, v0

    const v4, 0x7f09003d

    move-object/from16 v0, v20

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 303
    :cond_2
    const/4 v3, 0x0

    .line 412
    :goto_2
    return v3

    .line 293
    .end local v14           #emptyTitle:Z
    .end local v15           #emptyUrl:Z
    .end local v20           #r:Landroid/content/res/Resources;
    :cond_3
    const/4 v3, 0x0

    move v14, v3

    goto :goto_0

    .line 294
    .restart local v14       #emptyTitle:Z
    :cond_4
    const/4 v3, 0x0

    move v15, v3

    goto :goto_1

    .line 305
    .restart local v15       #emptyUrl:Z
    .restart local v20       #r:Landroid/content/res/Resources;
    :cond_5
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    .line 310
    .local v27, url:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "javascript:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 311
    new-instance v26, Ljava/net/URI;

    invoke-direct/range {v26 .. v27}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 312
    .local v26, uriObj:Ljava/net/URI;
    invoke-virtual/range {v26 .. v26}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v21

    .line 313
    .local v21, scheme:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/android/browser/Bookmarks;->urlHasAcceptableScheme(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 317
    if-eqz v21, :cond_6

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    move-object v3, v0

    const v4, 0x7f09003f

    move-object/from16 v0, v20

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    const/4 v3, 0x0

    goto :goto_2

    .line 323
    :cond_6
    :try_start_1
    new-instance v9, Landroid/net/WebAddress;

    move-object v0, v9

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/net/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 327
    .local v9, address:Landroid/net/WebAddress;
    :try_start_2
    iget-object v3, v9, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_7

    .line 328
    new-instance v3, Ljava/net/URISyntaxException;

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    .line 333
    .end local v9           #address:Landroid/net/WebAddress;
    .end local v21           #scheme:Ljava/lang/String;
    .end local v26           #uriObj:Ljava/net/URI;
    :catch_0
    move-exception v3

    move-object v13, v3

    .line 334
    .local v13, e:Ljava/net/URISyntaxException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    move-object v3, v0

    const v4, 0x7f09003e

    move-object/from16 v0, v20

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 335
    const/4 v3, 0x0

    goto :goto_2

    .line 324
    .end local v13           #e:Ljava/net/URISyntaxException;
    .restart local v21       #scheme:Ljava/lang/String;
    .restart local v26       #uriObj:Ljava/net/URI;
    :catch_1
    move-exception v3

    move-object v13, v3

    .line 325
    .local v13, e:Landroid/net/ParseException;
    :try_start_3
    new-instance v3, Ljava/net/URISyntaxException;

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 330
    .end local v13           #e:Landroid/net/ParseException;
    .restart local v9       #address:Landroid/net/WebAddress;
    :cond_7
    invoke-virtual {v9}, Landroid/net/WebAddress;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v27

    .line 339
    .end local v9           #address:Landroid/net/WebAddress;
    .end local v21           #scheme:Ljava/lang/String;
    .end local v26           #uriObj:Ljava/net/URI;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mFolderSpinner:Landroid/widget/Spinner;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 340
    .local v22, spinnerText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mCursor:Landroid/database/Cursor;

    move-object v3, v0

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 341
    const/16 v16, 0x0

    .line 342
    .local v16, folder:I
    const/16 v18, 0x0

    .local v18, i:I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/AddBookmarkPage;->mFolderCount:I

    move v3, v0

    move/from16 v0, v18

    move v1, v3

    if-ge v0, v1, :cond_9

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mCursor:Landroid/database/Cursor;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 345
    .local v17, folderText:Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_c

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mCursor:Landroid/database/Cursor;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 357
    .end local v17           #folderText:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/AddBookmarkPage;->mEditingExisting:Z

    move v3, v0

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object v3, v0

    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object v3, v0

    const-string v4, "url"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object v3, v0

    const-string v4, "folder"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move v0, v3

    move/from16 v1, v16

    if-eq v0, v1, :cond_d

    :cond_a
    const/4 v3, 0x1

    move v11, v3

    .line 359
    .local v11, changed:Z
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v5, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const-string v6, "url = ? AND title = ? AND bookmark = 1 AND folder = ?"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v27, v7, v8

    const/4 v8, 0x1

    aput-object v24, v7, v8

    const/4 v8, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 366
    .local v12, cursor:Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 367
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/AddBookmarkPage;->mEditingExisting:Z

    move v3, v0

    if-eqz v3, :cond_b

    if-eqz v11, :cond_e

    .line 369
    :cond_b
    const v3, 0x7f090149

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 371
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 375
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 350
    .end local v11           #changed:Z
    .end local v12           #cursor:Landroid/database/Cursor;
    .restart local v17       #folderText:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mCursor:Landroid/database/Cursor;

    move-object v3, v0

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 342
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 357
    .end local v17           #folderText:Ljava/lang/String;
    :cond_d
    const/4 v3, 0x0

    move v11, v3

    goto :goto_4

    .line 379
    .restart local v11       #changed:Z
    .restart local v12       #cursor:Landroid/database/Cursor;
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/AddBookmarkPage;->mEditingExisting:Z

    move v3, v0

    if-eqz v3, :cond_10

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object v3, v0

    const-string v4, "title"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object v3, v0

    const-string v4, "url"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object v3, v0

    const-string v4, "invalidateThumbnail"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mOriginalUrl:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const/4 v5, 0x1

    :goto_5
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object v3, v0

    const-string v4, "folder"

    move-object v0, v3

    move-object v1, v4

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 385
    const/4 v3, -0x1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, p0

    move v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/AddBookmarkPage;->setResult(ILandroid/content/Intent;)V

    .line 410
    :goto_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 412
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 382
    :cond_f
    const/4 v5, 0x0

    goto :goto_5

    .line 389
    :cond_10
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 390
    .local v10, bundle:Landroid/os/Bundle;
    const-string v3, "title"

    move-object v0, v10

    move-object v1, v3

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v3, "url"

    move-object v0, v10

    move-object v1, v3

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v3, "thumbnail"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mThumbnail:Landroid/graphics/Bitmap;

    move-object v4, v0

    invoke-virtual {v10, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 393
    const-string v3, "invalidateThumbnail"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mOriginalUrl:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v27

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const/4 v4, 0x1

    :goto_7
    invoke-virtual {v10, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 394
    const-string v3, "touchIconUrl"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v10, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v3, "folder"

    move-object v0, v10

    move-object v1, v3

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    const/16 v4, 0x64

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v19

    .line 398
    .local v19, msg:Landroid/os/Message;
    move-object/from16 v0, v19

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 400
    new-instance v23, Ljava/lang/Thread;

    new-instance v3, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;-><init>(Lcom/android/browser/AddBookmarkPage;Landroid/os/Message;)V

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 401
    .local v23, t:Ljava/lang/Thread;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->start()V

    .line 403
    const/4 v3, -0x1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, p0

    move v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/AddBookmarkPage;->setResult(ILandroid/content/Intent;)V

    .line 406
    const-string v3, "bookmarkview"

    move-object/from16 v0, v27

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/browser/LogTag;->logBookmarkAdded(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 393
    .end local v19           #msg:Landroid/os/Message;
    .end local v23           #t:Ljava/lang/Thread;
    :cond_11
    const/4 v4, 0x0

    goto :goto_7
.end method
