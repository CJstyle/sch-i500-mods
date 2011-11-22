.class public Lcom/android/browser/BrowserBookmarksPage;
.super Landroid/app/Activity;
.source "BrowserBookmarksPage.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# static fields
.field private static final FULL_SCREEN_PARAMS:Landroid/view/ViewGroup$LayoutParams;


# instance fields
.field private mAddHeader:Lcom/android/browser/AddNewBookmark;

.field private mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

.field private mCanceled:Z

.field private mContextHeader:Lcom/android/browser/BookmarkItem;

.field private mCreateShortcut:Z

.field private mCurrentFolder:I

.field private mCurrentFolderView:Lcom/android/browser/FolderItem;

.field private mDisableNewWindow:Z

.field private mEmptyView:Landroid/view/View;

.field private mFolderContextHeader:Lcom/android/browser/FolderItem;

.field private mGridLayout:Landroid/widget/LinearLayout;

.field private mGridPage:Landroid/widget/GridView;

.field private final mHandler:Landroid/os/Handler;

.field private mIconSize:I

.field private mListLayout:Landroid/widget/LinearLayout;

.field private mListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mMostVisited:Z

.field private mVerticalList:Landroid/widget/ListView;

.field private mViewMode:Lcom/android/browser/BookmarkViewMode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 546
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/android/browser/BrowserBookmarksPage;->FULL_SCREEN_PARAMS:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    sget-object v0, Lcom/android/browser/BookmarkViewMode;->NONE:Lcom/android/browser/BookmarkViewMode;

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCanceled:Z

    .line 553
    new-instance v0, Lcom/android/browser/BrowserBookmarksPage$2;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserBookmarksPage$2;-><init>(Lcom/android/browser/BrowserBookmarksPage;)V

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mHandler:Landroid/os/Handler;

    .line 591
    new-instance v0, Lcom/android/browser/BrowserBookmarksPage$3;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserBookmarksPage$3;-><init>(Lcom/android/browser/BrowserBookmarksPage;)V

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/BrowserBookmarksPage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/BrowserBookmarksPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->saveCurrentPage()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/browser/BrowserBookmarksPage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolder:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/browser/BrowserBookmarksPage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->loadUrl(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/browser/BrowserBookmarksPage;I)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->createShortcutIntent(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/browser/BrowserBookmarksPage;ILandroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserBookmarksPage;->setResultToParent(ILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/browser/BrowserBookmarksPage;)Lcom/android/browser/BrowserBookmarksAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/browser/BrowserBookmarksPage;Lcom/android/browser/BrowserBookmarksAdapter;)Lcom/android/browser/BrowserBookmarksAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/browser/BrowserBookmarksPage;)Lcom/android/browser/BookmarkViewMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/browser/BrowserBookmarksPage;)Landroid/widget/GridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/browser/BrowserBookmarksPage;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mVerticalList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/BrowserBookmarksPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/browser/BrowserBookmarksPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCanceled:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/browser/BrowserBookmarksPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCreateShortcut:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/browser/BrowserBookmarksPage;)Lcom/android/browser/FolderItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    return-object v0
.end method

.method private copy(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter

    .prologue
    .line 1198
    :try_start_0
    const-string v0, "clipboard"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/text/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/text/IClipboard;

    move-result-object v0

    .line 1199
    if-eqz v0, :cond_0

    .line 1200
    invoke-interface {v0, p1}, Landroid/text/IClipboard;->setClipboardText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1205
    :cond_0
    :goto_0
    return-void

    .line 1202
    :catch_0
    move-exception v0

    .line 1203
    const-string v1, "browser"

    const-string v2, "Copy failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private createFolder()V
    .locals 2

    .prologue
    .line 930
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/browser/AddFolderPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 932
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserBookmarksPage;->startActivityForResult(Landroid/content/Intent;I)V

    .line 933
    return-void
.end method

.method private createShortcutIntent(I)Landroid/content/Intent;
    .locals 14
    .parameter

    .prologue
    const/high16 v13, 0x3f80

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/high16 v12, 0x4000

    const/4 v11, 0x0

    .line 727
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v0

    .line 728
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->getBookmarkTitle(I)Ljava/lang/String;

    move-result-object v1

    .line 729
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->getTouchIcon(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 731
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 732
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 734
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v5, v0

    .line 735
    const/16 v0, 0x20

    shl-long/2addr v5, v0

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v7, v0

    or-long/2addr v5, v7

    .line 736
    const-string v0, "com.android.browser.application_id"

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 738
    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 739
    const-string v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 741
    if-eqz v2, :cond_0

    .line 745
    iget v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mIconSize:I

    iget v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mIconSize:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 747
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 748
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v11, v11, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 750
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v11, v11, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 753
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(I)V

    .line 754
    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 755
    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 759
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 760
    sget-object v4, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v2, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 761
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v4, v10, v10, v5, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 762
    invoke-virtual {v4, v13, v13}, Landroid/graphics/RectF;->inset(FF)V

    .line 763
    const/high16 v5, 0x4100

    const/high16 v7, 0x4100

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v4, v5, v7, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 766
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 767
    invoke-virtual {v1, v2, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 769
    const-string v1, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 821
    :goto_0
    const-string v0, "duplicate"

    invoke-virtual {v3, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 822
    return-object v3

    .line 771
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->getFavicon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 772
    if-nez v0, :cond_1

    .line 773
    const-string v0, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v1, 0x7f020024

    invoke-static {p0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 778
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020025

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 782
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 783
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 787
    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 789
    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 790
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 792
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    .line 795
    const/high16 v7, 0x4180

    mul-float/2addr v7, v6

    .line 796
    mul-float/2addr v6, v12

    .line 797
    mul-float v8, v12, v6

    add-float/2addr v7, v8

    .line 799
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {v8, v11, v11, v9, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 801
    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    div-float v9, v7, v12

    sub-float/2addr v1, v9

    .line 805
    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v8

    div-float v9, v7, v12

    sub-float/2addr v8, v9

    sub-float/2addr v8, v6

    .line 807
    new-instance v9, Landroid/graphics/RectF;

    add-float v10, v1, v7

    add-float/2addr v7, v8

    invoke-direct {v9, v1, v8, v10, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 810
    invoke-virtual {v4, v9, v12, v12, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 815
    invoke-virtual {v9, v6, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 816
    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 817
    const-string v0, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method private createShortcutIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 29
    .parameter "url"
    .parameter "title"

    .prologue
    .line 647
    const/16 v19, 0x0

    .line 649
    .local v19, touchIcon:Landroid/graphics/Bitmap;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 650
    .local v8, i:Landroid/content/Intent;
    new-instance v18, Landroid/content/Intent;

    const-string v25, "android.intent.action.VIEW"

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 652
    .local v18, shortcutIntent:Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v22, v0

    .line 653
    .local v22, urlHash:J
    const/16 v25, 0x20

    shl-long v25, v22, v25

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->hashCode()I

    move-result v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    or-long v20, v25, v27

    .line 654
    .local v20, uniqueId:J
    const-string v25, "com.android.browser.application_id"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 656
    const-string v25, "android.intent.extra.shortcut.INTENT"

    move-object v0, v8

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 657
    const-string v25, "android.intent.extra.shortcut.NAME"

    move-object v0, v8

    move-object/from16 v1, v25

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 659
    if-eqz v19, :cond_0

    .line 661
    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v26, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move/from16 v2, v26

    throw v0

    move-result-object v6

    .line 662
    .local v6, copy:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 666
    .local v5, canvas:Landroid/graphics/Canvas;
    new-instance v14, Landroid/graphics/Path;

    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    .line 667
    .local v14, path:Landroid/graphics/Path;
    sget-object v25, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    move-object v0, v14

    move-object/from16 v1, v25

    throw v0

    .line 668
    new-instance v16, Landroid/graphics/RectF;

    const/16 v25, 0x0

    const/16 v26, 0x0

    throw v19

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    throw v19

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v16

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 670
    .local v16, rect:Landroid/graphics/RectF;
    const/high16 v25, 0x3f80

    const/high16 v26, 0x3f80

    move-object/from16 v0, v16

    move/from16 v1, v25

    move/from16 v2, v26

    throw v0

    .line 671
    const/high16 v25, 0x4100

    const/high16 v26, 0x4100

    sget-object v27, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v0, v14

    move-object/from16 v1, v16

    move/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v27

    throw v0

    .line 675
    new-instance v13, Landroid/graphics/Paint;

    const/16 v25, 0x1

    move-object v0, v13

    move/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 676
    .local v13, paint:Landroid/graphics/Paint;
    new-instance v25, Landroid/graphics/PorterDuffXfermode;

    sget-object v26, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v25 .. v26}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object v0, v13

    move-object/from16 v1, v25

    throw v0

    .line 677
    throw v5

    .line 679
    const-string v25, "android.intent.extra.shortcut.ICON"

    move-object v0, v8

    move-object/from16 v1, v25

    move-object v2, v6

    throw v0

    .line 721
    .end local v5           #canvas:Landroid/graphics/Canvas;
    .end local v6           #copy:Landroid/graphics/Bitmap;
    .end local v13           #paint:Landroid/graphics/Paint;
    .end local v14           #path:Landroid/graphics/Path;
    .end local v16           #rect:Landroid/graphics/RectF;
    :goto_0
    const-string v25, "duplicate"

    const/16 v26, 0x0

    move-object v0, v8

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 722
    return-object v8

    .line 681
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/browser/BrowserBookmarksPage;->getFavIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 682
    .local v7, favicon:Landroid/graphics/Bitmap;
    if-nez v7, :cond_1

    .line 683
    const-string v25, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v26, 0x7f020024

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v26

    move-object v0, v8

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 688
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserBookmarksPage;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f020024

    invoke-static/range {v25 .. v26}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 692
    .local v9, icon:Landroid/graphics/Bitmap;
    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v26, 0x1

    move-object v0, v9

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 693
    .restart local v6       #copy:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 697
    .restart local v5       #canvas:Landroid/graphics/Canvas;
    new-instance v11, Landroid/graphics/Paint;

    const/16 v25, 0x3

    move-object v0, v11

    move/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 699
    .local v11, p:Landroid/graphics/Paint;
    sget-object v25, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    move-object v0, v11

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 700
    const/16 v25, -0x1

    move-object v0, v11

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 703
    const/high16 v10, 0x4180

    .line 704
    .local v10, iconSize:F
    const/high16 v12, 0x4000

    .line 705
    .local v12, padding:F
    const/high16 v17, 0x41a0

    .line 706
    .local v17, rectSize:F
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x41a0

    sub-float v24, v25, v26

    .line 707
    .local v24, y:F
    new-instance v15, Landroid/graphics/RectF;

    const/16 v25, 0x0

    const/high16 v26, 0x41a0

    const/high16 v27, 0x41a0

    add-float v27, v27, v24

    move-object v0, v15

    move/from16 v1, v25

    move/from16 v2, v24

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 710
    .local v15, r:Landroid/graphics/RectF;
    const/high16 v25, 0x4000

    const/high16 v26, 0x4000

    move-object v0, v5

    move-object v1, v15

    move/from16 v2, v25

    move/from16 v3, v26

    move-object v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 715
    const/high16 v25, 0x4000

    const/high16 v26, 0x4000

    move-object v0, v15

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 716
    const/16 v25, 0x0

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v25

    move-object v3, v15

    move-object v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 717
    const-string v25, "android.intent.extra.shortcut.ICON"

    move-object v0, v8

    move-object/from16 v1, v25

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method private displayRemoveBookmarkDialog(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f09000f

    const v4, 0x1080027

    const-string v3, "BrowserBookmarksPage"

    const-string v7, "%s"

    .line 1119
    .line 1121
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->getBookmarkTitle(I)Ljava/lang/String;

    move-result-object v0

    .line 1122
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v1

    .line 1124
    if-eqz v0, :cond_4

    const-string v2, "VZW Home"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "http://converge.vzwwap.com/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const-string v2, "My Verizon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "https://mobile.vzw.com/sspostmw/forms/myacc.jsp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string v2, "Your Guide Mobile"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "http://yourguide.vzw.com/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1128
    :cond_2
    const-string v2, "BrowserBookmarksPage"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090047

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090048

    invoke-virtual {p0, v3}, Lcom/android/browser/BrowserBookmarksPage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    :goto_0
    invoke-virtual {v3, v7, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1156
    :goto_1
    return-void

    :cond_3
    move-object v0, v1

    .line 1129
    goto :goto_0

    .line 1139
    :cond_4
    const-string v1, "BrowserBookmarksPage"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090040

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090049

    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserBookmarksPage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s"

    invoke-virtual {v2, v7, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090010

    new-instance v2, Lcom/android/browser/BrowserBookmarksPage$5;

    invoke-direct {v2, p0, p1}, Lcom/android/browser/BrowserBookmarksPage$5;-><init>(Lcom/android/browser/BrowserBookmarksPage;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1
.end method

.method private displayRemoveFolderDialog(I)V
    .locals 4
    .parameter

    .prologue
    .line 1099
    .line 1100
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09013c

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserBookmarksPage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s"

    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->getFolderName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090010

    new-instance v2, Lcom/android/browser/BrowserBookmarksPage$4;

    invoke-direct {v2, p0, p1}, Lcom/android/browser/BrowserBookmarksPage$4;-><init>(Lcom/android/browser/BrowserBookmarksPage;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09000f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1113
    return-void
.end method

.method private editBookmark(I)V
    .locals 4
    .parameter

    .prologue
    .line 1008
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->getBookmarkTitle(I)Ljava/lang/String;

    move-result-object v0

    .line 1009
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v1

    .line 1011
    if-eqz v0, :cond_3

    const-string v2, "VZW Home"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "http://converge.vzwwap.com/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const-string v2, "My Verizon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "https://mobile.vzw.com/sspostmw/forms/myacc.jsp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string v2, "Your Guide Mobile"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "http://yourguide.vzw.com/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1015
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090045

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090046

    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserBookmarksPage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09000f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1028
    :goto_0
    return-void

    .line 1024
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/browser/AddBookmarkPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1025
    const-string v1, "bookmark"

    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->getRow(I)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1026
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserBookmarksPage;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private editFolder(I)V
    .locals 4
    .parameter

    .prologue
    .line 938
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/browser/AddFolderPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 940
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 953
    const-string v2, "title"

    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->getFolderName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    const-string v2, "id"

    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->getFolderId(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 956
    const-string v2, "folder"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 957
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserBookmarksPage;->startActivityForResult(Landroid/content/Intent;I)V

    .line 959
    return-void
.end method

.method private getFavIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "url"

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getTouchIcon(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "position"

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getTouchIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private loadUrl(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 836
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 837
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/android/browser/BrowserBookmarksPage;->setResultToParent(ILandroid/content/Intent;)V

    .line 838
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->finish()V

    .line 839
    return-void
.end method

.method private openInNewWindow(I)V
    .locals 4
    .parameter

    .prologue
    .line 992
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 993
    const-string v1, "new_window"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 994
    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/browser/BrowserBookmarksPage;->setResultToParent(ILandroid/content/Intent;)V

    .line 997
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->finish()V

    .line 998
    return-void
.end method

.method private refreshList()V
    .locals 1

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-nez v0, :cond_0

    .line 1165
    :goto_0
    return-void

    .line 1164
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0}, Lcom/android/browser/BrowserBookmarksAdapter;->refreshList()V

    goto :goto_0
.end method

.method private saveCurrentPage()V
    .locals 4

    .prologue
    .line 826
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/browser/AddBookmarkPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 829
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "folder"

    iget v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolder:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 831
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 832
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserBookmarksPage;->startActivityForResult(Landroid/content/Intent;I)V

    .line 833
    return-void
.end method

.method private setResultToParent(ILandroid/content/Intent;)V
    .locals 1
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1266
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 1267
    .local v0, parent:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 1268
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/BrowserBookmarksPage;->setResult(ILandroid/content/Intent;)V

    .line 1273
    .end local v0           #parent:Landroid/app/Activity;
    :goto_0
    return-void

    .line 1270
    .restart local v0       #parent:Landroid/app/Activity;
    :cond_0
    check-cast v0, Lcom/android/browser/CombinedBookmarkHistoryActivity;

    .end local v0           #parent:Landroid/app/Activity;
    invoke-virtual {v0, p1, p2}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->setResultFromChild(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private switchViewMode(Lcom/android/browser/BookmarkViewMode;)V
    .locals 11
    .parameter "viewMode"

    .prologue
    const/16 v10, 0x8

    const/4 v6, 0x0

    const/4 v9, -0x2

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 394
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    if-ne v4, p1, :cond_0

    .line 544
    :goto_0
    return-void

    .line 398
    :cond_0
    iput-object p1, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    .line 401
    invoke-virtual {p0, v6}, Lcom/android/browser/BrowserBookmarksPage;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 402
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    iget-boolean v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-eqz v4, :cond_9

    .line 403
    const-string v4, "pref_most_visited_view_mode"

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    invoke-virtual {v5}, Lcom/android/browser/BookmarkViewMode;->ordinal()I

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 407
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 409
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-eqz v4, :cond_1

    .line 410
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v4, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->switchViewMode(Lcom/android/browser/BookmarkViewMode;)V

    .line 412
    :cond_1
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    sget-object v5, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    if-ne v4, v5, :cond_c

    .line 413
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    if-nez v4, :cond_6

    .line 414
    new-instance v4, Landroid/widget/GridView;

    invoke-direct {v4, p0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    .line 415
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-eqz v4, :cond_2

    .line 416
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 418
    :cond_2
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 419
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    invoke-virtual {v4, v8}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 420
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    invoke-static {p0}, Lcom/android/browser/BrowserActivity;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 422
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    invoke-virtual {v4, v7}, Landroid/widget/GridView;->setFocusable(Z)V

    .line 423
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    invoke-virtual {v4, v7}, Landroid/widget/GridView;->setFocusableInTouchMode(Z)V

    .line 424
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    const v5, 0x108001c

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setSelector(I)V

    .line 425
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    .line 426
    .local v0, density:F
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    const/high16 v5, 0x4160

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 427
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    const/high16 v5, 0x4100

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 428
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    invoke-virtual {v4, v7}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 429
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    const/high16 v5, 0x100

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setScrollBarStyle(I)V

    .line 430
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    invoke-virtual {v4, v7}, Landroid/widget/GridView;->setDrawSelectorOnTop(Z)V

    .line 433
    iget-boolean v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-nez v4, :cond_4

    .line 434
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    if-nez v4, :cond_a

    .line 435
    new-instance v4, Lcom/android/browser/FolderItem;

    invoke-direct {v4, p0}, Lcom/android/browser/FolderItem;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    .line 436
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    invoke-virtual {v4, v10}, Lcom/android/browser/FolderItem;->setVisibility(I)V

    .line 442
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-eqz v4, :cond_b

    .line 443
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    iget v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolder:I

    invoke-virtual {v4, v5, v6}, Lcom/android/browser/BrowserBookmarksAdapter;->populateFolderItem(Lcom/android/browser/FolderItem;I)V

    .line 454
    :cond_4
    :goto_3
    iget-boolean v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-eqz v4, :cond_5

    .line 455
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mEmptyView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 457
    :cond_5
    iget-boolean v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCreateShortcut:Z

    if-nez v4, :cond_6

    .line 458
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    invoke-virtual {v4, p0}, Landroid/widget/GridView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 462
    .end local v0           #density:F
    :cond_6
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridLayout:Landroid/widget/LinearLayout;

    .line 463
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 466
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mVerticalList:Landroid/widget/ListView;

    if-eqz v4, :cond_7

    .line 467
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mVerticalList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 468
    .local v3, parent:Landroid/view/ViewGroup;
    if-eqz v3, :cond_7

    .line 469
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mVerticalList:Landroid/widget/ListView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 470
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 474
    .end local v3           #parent:Landroid/view/ViewGroup;
    :cond_7
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mListLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_8

    .line 475
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 476
    .restart local v3       #parent:Landroid/view/ViewGroup;
    if-eqz v3, :cond_8

    .line 477
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 481
    .end local v3           #parent:Landroid/view/ViewGroup;
    :cond_8
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 483
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridLayout:Landroid/widget/LinearLayout;

    sget-object v5, Lcom/android/browser/BrowserBookmarksPage;->FULL_SCREEN_PARAMS:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v4, v5}, Lcom/android/browser/BrowserBookmarksPage;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 405
    :cond_9
    const-string v4, "pref_bookmark_view_mode"

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    invoke-virtual {v5}, Lcom/android/browser/BookmarkViewMode;->ordinal()I

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 437
    .restart local v0       #density:F
    :cond_a
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    invoke-virtual {v4}, Lcom/android/browser/FolderItem;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 438
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    invoke-virtual {v4}, Lcom/android/browser/FolderItem;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 448
    :cond_b
    const-string v4, "browser"

    const-string v5, "BrowserBookmarksPage: switchViewMode() mBookmarksAdapter is null"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 487
    .end local v0           #density:F
    :cond_c
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mVerticalList:Landroid/widget/ListView;

    if-nez v4, :cond_12

    .line 488
    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 489
    .local v2, listView:Landroid/widget/ListView;
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-eqz v4, :cond_d

    .line 490
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 492
    :cond_d
    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 493
    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 494
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 497
    iget-boolean v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-nez v4, :cond_f

    .line 498
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    if-nez v4, :cond_15

    .line 499
    new-instance v4, Lcom/android/browser/FolderItem;

    invoke-direct {v4, p0}, Lcom/android/browser/FolderItem;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    .line 500
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    invoke-virtual {v4, v10}, Lcom/android/browser/FolderItem;->setVisibility(I)V

    .line 506
    :cond_e
    :goto_4
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-eqz v4, :cond_f

    .line 507
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    iget v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolder:I

    invoke-virtual {v4, v5, v6}, Lcom/android/browser/BrowserBookmarksAdapter;->populateFolderItem(Lcom/android/browser/FolderItem;I)V

    .line 513
    :cond_f
    iget-boolean v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-eqz v4, :cond_10

    .line 514
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 516
    :cond_10
    iget-boolean v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCreateShortcut:Z

    if-nez v4, :cond_11

    .line 517
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 519
    :cond_11
    iput-object v2, p0, Lcom/android/browser/BrowserBookmarksPage;->mVerticalList:Landroid/widget/ListView;

    .line 523
    .end local v2           #listView:Landroid/widget/ListView;
    :cond_12
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mListLayout:Landroid/widget/LinearLayout;

    .line 524
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 527
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    if-eqz v4, :cond_13

    .line 528
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 529
    .restart local v3       #parent:Landroid/view/ViewGroup;
    if-eqz v3, :cond_13

    .line 530
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 531
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 535
    .end local v3           #parent:Landroid/view/ViewGroup;
    :cond_13
    iget-boolean v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-nez v4, :cond_14

    .line 536
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mListLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 539
    :cond_14
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mListLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mVerticalList:Landroid/widget/ListView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 540
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mListLayout:Landroid/widget/LinearLayout;

    sget-object v5, Lcom/android/browser/BrowserBookmarksPage;->FULL_SCREEN_PARAMS:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v4, v5}, Lcom/android/browser/BrowserBookmarksPage;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 501
    .restart local v2       #listView:Landroid/widget/ListView;
    :cond_15
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    invoke-virtual {v4}, Lcom/android/browser/FolderItem;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 502
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    invoke-virtual {v4}, Lcom/android/browser/FolderItem;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_4
.end method


# virtual methods
.method public deleteBookmark(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-nez v0, :cond_0

    .line 1252
    :goto_0
    return-void

    .line 1251
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->deleteRow(I)V

    goto :goto_0
.end method

.method public deleteFolder(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->deleteFolderRow(I)V

    .line 1243
    return-void
.end method

.method public getBookmarkTitle(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getTitle(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFavicon(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "position"

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getFavicon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getFolderId(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getFolderId(Lcom/android/browser/BrowserBookmarksPage;I)I

    move-result v0

    return v0
.end method

.method public getFolderName(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getFolderName(Lcom/android/browser/BrowserBookmarksPage;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRow(I)Landroid/os/Bundle;
    .locals 1
    .parameter "position"

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getRow(I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public getUrl(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getUrl(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isFolderItem(Landroid/view/View;I)Z
    .locals 1
    .parameter "v"
    .parameter "position"

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/browser/BrowserBookmarksAdapter;->isFolderItem(Lcom/android/browser/BrowserBookmarksPage;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    const-string v2, "title"

    .line 1033
    packed-switch p1, :pswitch_data_0

    .line 1093
    :cond_0
    :goto_0
    return-void

    .line 1035
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 1037
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1040
    const-string v1, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1041
    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1043
    const-string v3, "folder"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 1044
    const-string v3, "shortcut"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1046
    if-eqz v3, :cond_1

    .line 1048
    invoke-direct {p0, v2, v1}, Lcom/android/browser/BrowserBookmarksPage;->createShortcutIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 1049
    const-string v4, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1050
    invoke-virtual {p0, v3}, Lcom/android/browser/BrowserBookmarksPage;->sendBroadcast(Landroid/content/Intent;)V

    .line 1053
    :cond_1
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1054
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v1, v0}, Lcom/android/browser/BrowserBookmarksAdapter;->updateRow(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1059
    :cond_2
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->refreshList()V

    goto :goto_0

    .line 1066
    :pswitch_1
    if-ne p2, v0, :cond_0

    .line 1068
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1071
    const-string v1, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1072
    if-eqz v1, :cond_0

    .line 1073
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v1, v0}, Lcom/android/browser/BrowserBookmarksAdapter;->updateFolderRow(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1078
    :cond_3
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->refreshList()V

    goto :goto_0

    .line 1084
    :pswitch_2
    if-ne p2, v0, :cond_0

    .line 1085
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->refreshList()V

    goto :goto_0

    .line 1033
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1256
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/browser/BrowserBookmarksPage;->setResultToParent(ILandroid/content/Intent;)V

    .line 1257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCanceled:Z

    .line 1258
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1259
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    const/4 v11, 0x1

    .line 107
    iget-boolean v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mCanceled:Z

    if-eqz v6, :cond_0

    move v6, v11

    .line 210
    :goto_0
    return v6

    .line 110
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 113
    .local v1, i:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    if-nez v1, :cond_1

    move v6, v11

    .line 114
    goto :goto_0

    .line 117
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 208
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    goto :goto_0

    .line 131
    :sswitch_0
    iget v6, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v6}, Lcom/android/browser/BrowserBookmarksPage;->editFolder(I)V

    .line 132
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->refreshList()V

    :goto_1
    move v6, v11

    .line 210
    goto :goto_0

    .line 135
    :sswitch_1
    iget v6, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v6}, Lcom/android/browser/BrowserBookmarksPage;->displayRemoveFolderDialog(I)V

    goto :goto_1

    .line 139
    :sswitch_2
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->saveCurrentPage()V

    goto :goto_1

    .line 142
    :sswitch_3
    iget v6, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v6}, Lcom/android/browser/BrowserBookmarksPage;->loadUrl(I)V

    goto :goto_1

    .line 145
    :sswitch_4
    iget v6, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v6}, Lcom/android/browser/BrowserBookmarksPage;->editBookmark(I)V

    goto :goto_1

    .line 148
    :sswitch_5
    iget v6, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v6}, Lcom/android/browser/BrowserBookmarksPage;->createShortcutIntent(I)Landroid/content/Intent;

    move-result-object v4

    .line 149
    .local v4, send:Landroid/content/Intent;
    const-string v6, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserBookmarksPage;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 153
    .end local v4           #send:Landroid/content/Intent;
    :sswitch_6
    iget-boolean v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-eqz v6, :cond_2

    .line 154
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget v7, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v7}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/provider/Browser;->deleteFromHistory(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 156
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->refreshList()V

    goto :goto_1

    .line 158
    :cond_2
    iget v6, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v6}, Lcom/android/browser/BrowserBookmarksPage;->displayRemoveBookmarkDialog(I)V

    goto :goto_1

    .line 162
    :sswitch_7
    iget v6, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v6}, Lcom/android/browser/BrowserBookmarksPage;->openInNewWindow(I)V

    goto :goto_1

    .line 165
    :sswitch_8
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget v7, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v6, v7}, Lcom/android/browser/BrowserBookmarksAdapter;->getTitle(I)Ljava/lang/String;

    move-result-object v6

    iget v7, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v7}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v7

    iget v8, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v8}, Lcom/android/browser/BrowserBookmarksPage;->getFavicon(I)Landroid/graphics/Bitmap;

    move-result-object v8

    iget-object v9, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget v10, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v9, v10}, Lcom/android/browser/BrowserBookmarksAdapter;->getScreenshot(I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-static {p0, v6, v7, v8, v9}, Lcom/android/browser/BrowserActivity;->sharePage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 171
    :sswitch_9
    iget v6, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v6}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/browser/BrowserBookmarksPage;->copy(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 174
    :sswitch_a
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v6

    iget v7, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v7}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p0, v7}, Lcom/android/browser/BrowserSettings;->setHomePage(Landroid/content/Context;Ljava/lang/String;)V

    .line 176
    const v6, 0x7f09003b

    invoke-static {p0, v6, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 184
    :sswitch_b
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    sget-object v7, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    if-ne v6, v7, :cond_3

    .line 185
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget v7, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v6, v7}, Lcom/android/browser/BrowserBookmarksAdapter;->getIsBookmark(I)Z

    move-result v2

    .line 186
    .local v2, isBookmark:Z
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget v7, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v6, v7}, Lcom/android/browser/BrowserBookmarksAdapter;->getTitle(I)Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, name:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget v7, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v6, v7}, Lcom/android/browser/BrowserBookmarksAdapter;->getUrl(I)Ljava/lang/String;

    move-result-object v5

    .line 196
    .local v5, url:Ljava/lang/String;
    :goto_2
    if-eqz v2, :cond_5

    .line 197
    const-string v6, "VZW Home"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "My Verizon"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "Your Guide Mobile"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 198
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {p0, v6, v5, v3}, Lcom/android/browser/Bookmarks;->removeFromBookmarks(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 189
    .end local v2           #isBookmark:Z
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #url:Ljava/lang/String;
    :cond_3
    iget-object v0, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v0, Lcom/android/browser/HistoryItem;

    .line 190
    .local v0, historyItem:Lcom/android/browser/HistoryItem;
    invoke-virtual {v0}, Lcom/android/browser/HistoryItem;->isBookmark()Z

    move-result v2

    .line 191
    .restart local v2       #isBookmark:Z
    invoke-virtual {v0}, Lcom/android/browser/HistoryItem;->getName()Ljava/lang/String;

    move-result-object v3

    .line 192
    .restart local v3       #name:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/browser/HistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #url:Ljava/lang/String;
    goto :goto_2

    .line 200
    .end local v0           #historyItem:Lcom/android/browser/HistoryItem;
    :cond_4
    const v6, 0x7f090048

    invoke-virtual {p0, v6}, Lcom/android/browser/BrowserBookmarksPage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "%s"

    invoke-virtual {v6, v7, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 204
    :cond_5
    invoke-static {p0, v3, v5}, Landroid/provider/Browser;->saveBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 117
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d0094 -> :sswitch_2
        0x7f0d0099 -> :sswitch_3
        0x7f0d009a -> :sswitch_7
        0x7f0d009b -> :sswitch_4
        0x7f0d009c -> :sswitch_5
        0x7f0d009d -> :sswitch_8
        0x7f0d009e -> :sswitch_9
        0x7f0d009f -> :sswitch_6
        0x7f0d00a0 -> :sswitch_a
        0x7f0d00df -> :sswitch_0
        0x7f0d00e0 -> :sswitch_1
        0x7f0d00e2 -> :sswitch_b
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/4 v12, 0x0

    .line 314
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 317
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mIconSize:I

    .line 320
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 321
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCreateShortcut:Z

    .line 324
    :cond_0
    const-string v0, "disable_new_window"

    invoke-virtual {v7, v0, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mDisableNewWindow:Z

    .line 326
    const-string v0, "mostVisited"

    invoke-virtual {v7, v0, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    .line 328
    iget-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCreateShortcut:Z

    if-eqz v0, :cond_1

    .line 329
    const v0, 0x7f090067

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->setTitle(I)V

    .line 332
    :cond_1
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->setContentView(I)V

    .line 333
    const v0, 0x7f0d0049

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mEmptyView:Landroid/view/View;

    .line 334
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 336
    const v0, 0x7f0d004b

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 337
    .local v8, mEmptyText:Landroid/widget/TextView;
    const v0, 0x7f09010f

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    .line 339
    invoke-virtual {p0, v12}, Lcom/android/browser/BrowserBookmarksPage;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 341
    .local v9, p:Landroid/content/SharedPreferences;
    iput v12, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolder:I

    .line 345
    sget-object v10, Lcom/android/browser/BookmarkViewMode;->NONE:Lcom/android/browser/BookmarkViewMode;

    .line 346
    .local v10, preference:Lcom/android/browser/BookmarkViewMode;
    iget-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-eqz v0, :cond_2

    .line 348
    sget-object v10, Lcom/android/browser/BookmarkViewMode;->LIST:Lcom/android/browser/BookmarkViewMode;

    .line 353
    :goto_0
    invoke-direct {p0, v10}, Lcom/android/browser/BrowserBookmarksPage;->switchViewMode(Lcom/android/browser/BookmarkViewMode;)V

    .line 355
    iget-boolean v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mCreateShortcut:Z

    .line 356
    .local v5, createShortcut:Z
    iget-boolean v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    .line 357
    .local v6, mostVisited:Z
    const-string v0, "url"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, url:Ljava/lang/String;
    const-string v0, "title"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 359
    .local v3, title:Ljava/lang/String;
    const-string v0, "thumbnail"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 361
    .local v4, thumbnail:Landroid/graphics/Bitmap;
    new-instance v0, Lcom/android/browser/BrowserBookmarksPage$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/browser/BrowserBookmarksPage$1;-><init>(Lcom/android/browser/BrowserBookmarksPage;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZZ)V

    new-array v1, v12, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserBookmarksPage$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 375
    return-void

    .line 350
    .end local v2           #url:Ljava/lang/String;
    .end local v3           #title:Ljava/lang/String;
    .end local v4           #thumbnail:Landroid/graphics/Bitmap;
    .end local v5           #createShortcut:Z
    .end local v6           #mostVisited:Z
    :cond_2
    invoke-static {}, Lcom/android/browser/BookmarkViewMode;->values()[Lcom/android/browser/BookmarkViewMode;

    move-result-object v0

    const-string v1, "pref_bookmark_view_mode"

    sget-object v11, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    invoke-virtual {v11}, Lcom/android/browser/BookmarkViewMode;->ordinal()I

    move-result v11

    invoke-interface {v9, v1, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aget-object v10, v0, v1

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v9, 0x0

    .line 216
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v3, v0

    .line 219
    .local v3, i:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    const/4 v6, 0x0

    .line 221
    .local v6, mFolder:Z
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    .line 222
    .local v4, inflater:Landroid/view/MenuInflater;
    iget-boolean v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-eqz v7, :cond_1

    .line 223
    const v7, 0x7f0c000c

    invoke-virtual {v4, v7, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 236
    :goto_0
    iget v7, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-nez v7, :cond_4

    iget-boolean v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-nez v7, :cond_4

    .line 237
    const v7, 0x7f0d0098

    invoke-interface {p1, v7, v9}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 238
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mAddHeader:Lcom/android/browser/AddNewBookmark;

    if-nez v7, :cond_3

    .line 239
    new-instance v7, Lcom/android/browser/AddNewBookmark;

    invoke-direct {v7, p0}, Lcom/android/browser/AddNewBookmark;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mAddHeader:Lcom/android/browser/AddNewBookmark;

    .line 244
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mAddHeader:Lcom/android/browser/AddNewBookmark;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "url"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/browser/AddNewBookmark;->setUrl(Ljava/lang/String;)V

    .line 245
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mAddHeader:Lcom/android/browser/AddNewBookmark;

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 307
    :goto_2
    return-void

    .line 226
    :cond_1
    iget-object v7, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    iget v8, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v7, v8}, Lcom/android/browser/BrowserBookmarksPage;->isFolderItem(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 228
    const v7, 0x7f0c000a

    invoke-virtual {v4, v7, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 229
    const/4 v6, 0x1

    goto :goto_0

    .line 233
    :cond_2
    const v7, 0x7f0c0001

    invoke-virtual {v4, v7, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 240
    :cond_3
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mAddHeader:Lcom/android/browser/AddNewBookmark;

    invoke-virtual {v7}, Lcom/android/browser/AddNewBookmark;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 241
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mAddHeader:Lcom/android/browser/AddNewBookmark;

    invoke-virtual {v7}, Lcom/android/browser/AddNewBookmark;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/browser/BrowserBookmarksPage;->mAddHeader:Lcom/android/browser/AddNewBookmark;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 248
    :cond_4
    iget-boolean v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-eqz v7, :cond_b

    .line 249
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    sget-object v8, Lcom/android/browser/BookmarkViewMode;->LIST:Lcom/android/browser/BookmarkViewMode;

    if-ne v7, v8, :cond_5

    iget-object v7, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v7, Lcom/android/browser/HistoryItem;

    invoke-virtual {v7}, Lcom/android/browser/HistoryItem;->isBookmark()Z

    move-result v7

    if-nez v7, :cond_6

    :cond_5
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget v8, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v7, v8}, Lcom/android/browser/BrowserBookmarksAdapter;->getIsBookmark(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 252
    :cond_6
    const v7, 0x7f0d00e2

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 254
    .local v5, item:Landroid/view/MenuItem;
    const v7, 0x7f090036

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 260
    .end local v5           #item:Landroid/view/MenuItem;
    :cond_7
    :goto_3
    iget-boolean v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mDisableNewWindow:Z

    if-eqz v7, :cond_8

    .line 261
    if-nez v6, :cond_8

    .line 262
    const v7, 0x7f0d009a

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 264
    :cond_8
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    if-nez v7, :cond_c

    .line 265
    new-instance v7, Lcom/android/browser/BookmarkItem;

    invoke-direct {v7, p0}, Lcom/android/browser/BookmarkItem;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    .line 273
    :cond_9
    :goto_4
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mFolderContextHeader:Lcom/android/browser/FolderItem;

    if-nez v7, :cond_d

    .line 274
    new-instance v7, Lcom/android/browser/FolderItem;

    invoke-direct {v7, p0}, Lcom/android/browser/FolderItem;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mFolderContextHeader:Lcom/android/browser/FolderItem;

    .line 280
    :cond_a
    :goto_5
    iget-object v7, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    iget v8, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v7, v8}, Lcom/android/browser/BrowserBookmarksPage;->isFolderItem(Landroid/view/View;I)Z

    move-result v7

    if-nez v7, :cond_f

    .line 283
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    sget-object v8, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    if-ne v7, v8, :cond_e

    .line 284
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget-object v8, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    iget v9, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v7, v8, v9}, Lcom/android/browser/BrowserBookmarksAdapter;->populateBookmarkItem(Lcom/android/browser/BookmarkItem;I)V

    .line 290
    :goto_6
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    goto/16 :goto_2

    .line 258
    :cond_b
    const v7, 0x7f0d0097

    invoke-interface {p1, v7, v9}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    goto :goto_3

    .line 266
    :cond_c
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    invoke-virtual {v7}, Lcom/android/browser/BookmarkItem;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 267
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    invoke-virtual {v7}, Lcom/android/browser/BookmarkItem;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4

    .line 275
    :cond_d
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mFolderContextHeader:Lcom/android/browser/FolderItem;

    invoke-virtual {v7}, Lcom/android/browser/FolderItem;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 276
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mFolderContextHeader:Lcom/android/browser/FolderItem;

    invoke-virtual {v7}, Lcom/android/browser/FolderItem;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/browser/BrowserBookmarksPage;->mFolderContextHeader:Lcom/android/browser/FolderItem;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_5

    .line 287
    :cond_e
    iget-object v1, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v1, Lcom/android/browser/BookmarkItem;

    .line 288
    .local v1, b:Lcom/android/browser/BookmarkItem;
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    invoke-virtual {v1, v7}, Lcom/android/browser/BookmarkItem;->copyTo(Lcom/android/browser/BookmarkItem;)V

    goto :goto_6

    .line 295
    .end local v1           #b:Lcom/android/browser/BookmarkItem;
    :cond_f
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    sget-object v8, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    if-ne v7, v8, :cond_10

    .line 296
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget-object v8, p0, Lcom/android/browser/BrowserBookmarksPage;->mFolderContextHeader:Lcom/android/browser/FolderItem;

    iget v9, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v7, v8, v9}, Lcom/android/browser/BrowserBookmarksAdapter;->populateFolderItem(Lcom/android/browser/FolderItem;I)V

    .line 302
    :goto_7
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mFolderContextHeader:Lcom/android/browser/FolderItem;

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    goto/16 :goto_2

    .line 299
    :cond_10
    iget-object v2, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v2, Lcom/android/browser/FolderItem;

    .line 300
    .local v2, f:Lcom/android/browser/FolderItem;
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mFolderContextHeader:Lcom/android/browser/FolderItem;

    invoke-virtual {v2, v7}, Lcom/android/browser/FolderItem;->copyTo(Lcom/android/browser/FolderItem;)V

    goto :goto_7
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 843
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 844
    iget-boolean v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mCreateShortcut:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-nez v1, :cond_0

    .line 845
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 846
    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 847
    const/4 v0, 0x1

    .line 849
    :cond_0
    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 380
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 381
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 964
    packed-switch p1, :pswitch_data_0

    .line 977
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 979
    :goto_0
    return v0

    .line 966
    :pswitch_0
    iget v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolder:I

    if-eqz v0, :cond_0

    .line 968
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/browser/BrowserBookmarksPage;->showFolder(Landroid/view/View;I)V

    .line 969
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/browser/FolderItem;->setVisibility(I)V

    .line 970
    iput v2, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolder:I

    .line 979
    const/4 v0, 0x1

    goto :goto_0

    .line 973
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 964
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 894
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 922
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 924
    :goto_0
    return v0

    .line 896
    :pswitch_0
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->saveCurrentPage()V

    :goto_1
    move v0, v2

    .line 924
    goto :goto_0

    .line 902
    :pswitch_1
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->createFolder()V

    .line 903
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->refreshList()V

    move v0, v2

    .line 904
    goto :goto_0

    .line 909
    :pswitch_2
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    sget-object v1, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    if-ne v0, v1, :cond_0

    .line 910
    sget-object v0, Lcom/android/browser/BookmarkViewMode;->LIST:Lcom/android/browser/BookmarkViewMode;

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->switchViewMode(Lcom/android/browser/BookmarkViewMode;)V

    goto :goto_1

    .line 912
    :cond_0
    sget-object v0, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->switchViewMode(Lcom/android/browser/BookmarkViewMode;)V

    goto :goto_1

    .line 894
    :pswitch_data_0
    .packed-switch 0x7f0d0094
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 854
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 855
    iget-boolean v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mCreateShortcut:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v1}, Lcom/android/browser/BrowserBookmarksAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 889
    :cond_0
    :goto_0
    return v0

    .line 860
    :cond_1
    const v0, 0x7f0d0095

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 863
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    sget-object v2, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    if-ne v1, v2, :cond_2

    .line 864
    const v1, 0x7f090043

    .line 865
    const v2, 0x7f020033

    move v6, v2

    move v2, v1

    move v1, v6

    .line 871
    :goto_1
    iget v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolder:I

    if-nez v3, :cond_3

    move v3, v5

    .line 872
    :goto_2
    const v4, 0x7f0d0096

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 874
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 875
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v0, v5

    .line 889
    goto :goto_0

    .line 867
    :cond_2
    const v1, 0x7f090042

    .line 868
    const v2, 0x7f02003f

    move v6, v2

    move v2, v1

    move v1, v6

    goto :goto_1

    .line 871
    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->refreshList()V

    .line 386
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 387
    return-void
.end method

.method public showFolder(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "folder"

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/browser/BrowserBookmarksAdapter;->showFolder(Lcom/android/browser/BrowserBookmarksPage;Landroid/view/View;I)V

    .line 1226
    return-void
.end method
