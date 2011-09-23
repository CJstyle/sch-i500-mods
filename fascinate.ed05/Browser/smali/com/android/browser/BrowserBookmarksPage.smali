.class public Lcom/android/browser/BrowserBookmarksPage;
.super Landroid/app/Activity;
.source "BrowserBookmarksPage.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# static fields
.field private static final ADAPTER_CREATED:I = 0x3e9

.field private static final BOOKMARKS_SAVE:I = 0x1

.field private static final FOLDERS_SAVE:I = 0x2

.field private static final FULL_SCREEN_PARAMS:Landroid/view/ViewGroup$LayoutParams; = null

.field private static final INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field private static final LOGTAG:Ljava/lang/String; = "browser"

.field private static final PREF_BOOKMARK_VIEW_MODE:Ljava/lang/String; = "pref_bookmark_view_mode"

.field private static final PREF_MOST_VISITED_VIEW_MODE:Ljava/lang/String; = "pref_most_visited_view_mode"

.field private static final ROOT_FOLDER:I = 0x0

.field private static final SAVE_CURRENT_PAGE:I = 0x3e8


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

    .line 537
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

    .line 544
    new-instance v0, Lcom/android/browser/BrowserBookmarksPage$2;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserBookmarksPage$2;-><init>(Lcom/android/browser/BrowserBookmarksPage;)V

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mHandler:Landroid/os/Handler;

    .line 582
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
    .locals 4
    .parameter "text"

    .prologue
    .line 1147
    :try_start_0
    const-string v2, "clipboard"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/text/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/text/IClipboard;

    move-result-object v0

    .line 1148
    .local v0, clip:Landroid/text/IClipboard;
    if-eqz v0, :cond_0

    .line 1149
    invoke-interface {v0, p1}, Landroid/text/IClipboard;->setClipboardText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1154
    .end local v0           #clip:Landroid/text/IClipboard;
    :cond_0
    :goto_0
    return-void

    .line 1151
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1152
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "browser"

    const-string v3, "Copy failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private createFolder()V
    .locals 2

    .prologue
    .line 899
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/browser/AddFolderPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 901
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserBookmarksPage;->startActivityForResult(Landroid/content/Intent;I)V

    .line 902
    return-void
.end method

.method private createShortcutIntent(I)Landroid/content/Intent;
    .locals 37
    .parameter "position"

    .prologue
    .line 718
    invoke-virtual/range {p0 .. p1}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v28

    .line 719
    .local v28, url:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/browser/BrowserBookmarksPage;->getBookmarkTitle(I)Ljava/lang/String;

    move-result-object v24

    .line 720
    .local v24, title:Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/android/browser/BrowserBookmarksPage;->getTouchIcon(I)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 722
    .local v25, touchIcon:Landroid/graphics/Bitmap;
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 723
    .local v11, i:Landroid/content/Intent;
    new-instance v22, Landroid/content/Intent;

    const-string v33, "android.intent.action.VIEW"

    invoke-static/range {v28 .. v28}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v34

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 725
    .local v22, shortcutIntent:Landroid/content/Intent;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->hashCode()I

    move-result v33

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v29, v0

    .line 726
    .local v29, urlHash:J
    const/16 v33, 0x20

    shl-long v33, v29, v33

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->hashCode()I

    move-result v35

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v35, v0

    or-long v26, v33, v35

    .line 727
    .local v26, uniqueId:J
    const-string v33, "com.android.browser.application_id"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 729
    const-string v33, "android.intent.extra.shortcut.INTENT"

    move-object v0, v11

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 730
    const-string v33, "android.intent.extra.shortcut.NAME"

    move-object v0, v11

    move-object/from16 v1, v33

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    if-eqz v25, :cond_0

    .line 736
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserBookmarksPage;->mIconSize:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserBookmarksPage;->mIconSize:I

    move/from16 v34, v0

    sget-object v35, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v33 .. v35}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 738
    .local v5, bm:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 739
    .local v6, canvas:Landroid/graphics/Canvas;
    new-instance v23, Landroid/graphics/Rect;

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v35

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v36

    move-object/from16 v0, v23

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 741
    .local v23, src:Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v35

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v36

    move-object v0, v9

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 744
    .local v9, dest:Landroid/graphics/Rect;
    new-instance v17, Landroid/graphics/Paint;

    const/16 v33, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 745
    .local v17, paint:Landroid/graphics/Paint;
    const/16 v33, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 746
    move-object v0, v6

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    move-object v3, v9

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 750
    new-instance v18, Landroid/graphics/Path;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Path;-><init>()V

    .line 751
    .local v18, path:Landroid/graphics/Path;
    sget-object v33, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 752
    new-instance v20, Landroid/graphics/RectF;

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move-object/from16 v0, v20

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 753
    .local v20, rect:Landroid/graphics/RectF;
    const/high16 v33, 0x3f80

    const/high16 v34, 0x3f80

    move-object/from16 v0, v20

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 754
    const/high16 v33, 0x4100

    const/high16 v34, 0x4100

    sget-object v35, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v33

    move/from16 v3, v34

    move-object/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 757
    new-instance v33, Landroid/graphics/PorterDuffXfermode;

    sget-object v34, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v33 .. v34}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 758
    move-object v0, v6

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 760
    const-string v33, "android.intent.extra.shortcut.ICON"

    move-object v0, v11

    move-object/from16 v1, v33

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 812
    .end local v5           #bm:Landroid/graphics/Bitmap;
    .end local v6           #canvas:Landroid/graphics/Canvas;
    .end local v9           #dest:Landroid/graphics/Rect;
    .end local v17           #paint:Landroid/graphics/Paint;
    .end local v18           #path:Landroid/graphics/Path;
    .end local v20           #rect:Landroid/graphics/RectF;
    .end local v23           #src:Landroid/graphics/Rect;
    :goto_0
    const-string v33, "duplicate"

    const/16 v34, 0x0

    move-object v0, v11

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 813
    return-object v11

    .line 762
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/browser/BrowserBookmarksPage;->getFavicon(I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 763
    .local v10, favicon:Landroid/graphics/Bitmap;
    if-nez v10, :cond_1

    .line 764
    const-string v33, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v34, 0x7f02001c

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-static {v0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v34

    move-object v0, v11

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 769
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserBookmarksPage;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f02001d

    invoke-static/range {v33 .. v34}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 773
    .local v12, icon:Landroid/graphics/Bitmap;
    sget-object v33, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v34, 0x1

    move-object v0, v12

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 774
    .local v7, copy:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 778
    .restart local v6       #canvas:Landroid/graphics/Canvas;
    new-instance v15, Landroid/graphics/Paint;

    const/16 v33, 0x3

    move-object v0, v15

    move/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 780
    .local v15, p:Landroid/graphics/Paint;
    sget-object v33, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    move-object v0, v15

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 781
    const/16 v33, -0x1

    move-object v0, v15

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 783
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserBookmarksPage;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v33

    move-object/from16 v0, v33

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move v8, v0

    .line 786
    .local v8, density:F
    const/high16 v33, 0x4180

    mul-float v14, v33, v8

    .line 787
    .local v14, iconSize:F
    const/high16 v33, 0x4000

    mul-float v16, v33, v8

    .line 788
    .local v16, padding:F
    const/high16 v33, 0x4000

    mul-float v33, v33, v16

    add-float v21, v14, v33

    .line 790
    .local v21, rectSize:F
    new-instance v13, Landroid/graphics/Rect;

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v35

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v36

    move-object v0, v13

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 792
    .local v13, iconBounds:Landroid/graphics/Rect;
    invoke-virtual {v13}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v33

    const/high16 v34, 0x4000

    div-float v34, v21, v34

    sub-float v31, v33, v34

    .line 796
    .local v31, x:F
    invoke-virtual {v13}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v33

    const/high16 v34, 0x4000

    div-float v34, v21, v34

    sub-float v33, v33, v34

    sub-float v32, v33, v16

    .line 798
    .local v32, y:F
    new-instance v19, Landroid/graphics/RectF;

    add-float v33, v31, v21

    add-float v34, v32, v21

    move-object/from16 v0, v19

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 801
    .local v19, r:Landroid/graphics/RectF;
    const/high16 v33, 0x4000

    const/high16 v34, 0x4000

    move-object v0, v6

    move-object/from16 v1, v19

    move/from16 v2, v33

    move/from16 v3, v34

    move-object v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 806
    move-object/from16 v0, v19

    move/from16 v1, v16

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 807
    const/16 v33, 0x0

    move-object v0, v6

    move-object v1, v10

    move-object/from16 v2, v33

    move-object/from16 v3, v19

    move-object v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 808
    const-string v33, "android.intent.extra.shortcut.ICON"

    move-object v0, v11

    move-object/from16 v1, v33

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method private createShortcutIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 29
    .parameter "url"
    .parameter "title"

    .prologue
    .line 638
    const/16 v19, 0x0

    .line 640
    .local v19, touchIcon:Landroid/graphics/Bitmap;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 641
    .local v8, i:Landroid/content/Intent;
    new-instance v18, Landroid/content/Intent;

    const-string v25, "android.intent.action.VIEW"

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 643
    .local v18, shortcutIntent:Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v22, v0

    .line 644
    .local v22, urlHash:J
    const/16 v25, 0x20

    shl-long v25, v22, v25

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->hashCode()I

    move-result v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    or-long v20, v25, v27

    .line 645
    .local v20, uniqueId:J
    const-string v25, "com.android.browser.application_id"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    const-string v25, "android.intent.extra.shortcut.INTENT"

    move-object v0, v8

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 648
    const-string v25, "android.intent.extra.shortcut.NAME"

    move-object v0, v8

    move-object/from16 v1, v25

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 650
    if-eqz v19, :cond_0

    .line 652
    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v26, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move/from16 v2, v26

    throw v0

    move-result-object v6

    .line 653
    .local v6, copy:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 657
    .local v5, canvas:Landroid/graphics/Canvas;
    new-instance v14, Landroid/graphics/Path;

    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    .line 658
    .local v14, path:Landroid/graphics/Path;
    sget-object v25, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    move-object v0, v14

    move-object/from16 v1, v25

    throw v0

    .line 659
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

    .line 661
    .local v16, rect:Landroid/graphics/RectF;
    const/high16 v25, 0x3f80

    const/high16 v26, 0x3f80

    move-object/from16 v0, v16

    move/from16 v1, v25

    move/from16 v2, v26

    throw v0

    .line 662
    const/high16 v25, 0x4100

    const/high16 v26, 0x4100

    sget-object v27, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v0, v14

    move-object/from16 v1, v16

    move/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v27

    throw v0

    .line 666
    new-instance v13, Landroid/graphics/Paint;

    const/16 v25, 0x1

    move-object v0, v13

    move/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 667
    .local v13, paint:Landroid/graphics/Paint;
    new-instance v25, Landroid/graphics/PorterDuffXfermode;

    sget-object v26, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v25 .. v26}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object v0, v13

    move-object/from16 v1, v25

    throw v0

    .line 668
    throw v5

    .line 670
    const-string v25, "android.intent.extra.shortcut.ICON"

    move-object v0, v8

    move-object/from16 v1, v25

    move-object v2, v6

    throw v0

    .line 712
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

    .line 713
    return-object v8

    .line 672
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/browser/BrowserBookmarksPage;->getFavIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 673
    .local v7, favicon:Landroid/graphics/Bitmap;
    if-nez v7, :cond_1

    .line 674
    const-string v25, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v26, 0x7f02001c

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v26

    move-object v0, v8

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 679
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserBookmarksPage;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f02001c

    invoke-static/range {v25 .. v26}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 683
    .local v9, icon:Landroid/graphics/Bitmap;
    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v26, 0x1

    move-object v0, v9

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 684
    .restart local v6       #copy:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 688
    .restart local v5       #canvas:Landroid/graphics/Canvas;
    new-instance v11, Landroid/graphics/Paint;

    const/16 v25, 0x3

    move-object v0, v11

    move/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 690
    .local v11, p:Landroid/graphics/Paint;
    sget-object v25, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    move-object v0, v11

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 691
    const/16 v25, -0x1

    move-object v0, v11

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 694
    const/high16 v10, 0x4180

    .line 695
    .local v10, iconSize:F
    const/high16 v12, 0x4000

    .line 696
    .local v12, padding:F
    const/high16 v17, 0x41a0

    .line 697
    .local v17, rectSize:F
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x41a0

    sub-float v24, v25, v26

    .line 698
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

    .line 701
    .local v15, r:Landroid/graphics/RectF;
    const/high16 v25, 0x4000

    const/high16 v26, 0x4000

    move-object v0, v5

    move-object v1, v15

    move/from16 v2, v25

    move/from16 v3, v26

    move-object v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 706
    const/high16 v25, 0x4000

    const/high16 v26, 0x4000

    move-object v0, v15

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 707
    const/16 v25, 0x0

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v25

    move-object v3, v15

    move-object v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 708
    const-string v25, "android.intent.extra.shortcut.ICON"

    move-object v0, v8

    move-object/from16 v1, v25

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method private displayRemoveBookmarkDialog(I)V
    .locals 9
    .parameter "position"

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f09000f

    const v5, 0x1080027

    const-string v4, "BrowserBookmarksPage"

    const-string v8, "%s"

    .line 1070
    move v0, p1

    .line 1072
    .local v0, deletePos:I
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->getBookmarkTitle(I)Ljava/lang/String;

    move-result-object v1

#    .line 1073
#    .local v1, title:Ljava/lang/String;
#    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;
#
#   move-result-object v2
#
#    .line 1075
#    .local v2, url:Ljava/lang/String;
#    const-string v3, "VZW Home"
#
#    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
#
#    move-result v3
#
#    if-eqz v3, :cond_0
#
#    const-string v3, "http://converge.vzwwap.com/"
#
#    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
#
#    move-result v3
#
#    if-nez v3, :cond_1
#
#   :cond_0
#    const-string v3, "My Verizon"
#
#    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
#
#    move-result v3
#
#    if-eqz v3, :cond_2
#
#    const-string v3, "https://mobile.vzw.com/sspostmw/forms/myacc.jsp"
#
#    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
#
#    move-result v3
#
#    if-eqz v3, :cond_2
#
#    .line 1078
#    :cond_1
#    const-string v3, "BrowserBookmarksPage"
#
#    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
#
#    move-result-object v3
#
#    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
#
#    .line 1079
#    new-instance v3, Landroid/app/AlertDialog$Builder;
#
#    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
#
#    const v4, 0x7f090047
#
#    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;
#
#    move-result-object v3
#
#    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;
#
#    move-result-object v3
#
#    const v4, 0x7f090048
#
#    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserBookmarksPage;->getText(I)Ljava/lang/CharSequence;
#
#    move-result-object v4
#
#    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
#
#    move-result-object v4
#
#    const-string v5, "%s"
#
#    invoke-virtual {v4, v8, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
#
#    move-result-object v4
#
#    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
#
#    move-result-object v3
#
#    invoke-virtual {v3, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
#
#    move-result-object v3
#
#    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
#
#    .line 1106
#    :goto_0
#    return-void
#
#    .line 1089
#    :cond_2
    const-string v3, "BrowserBookmarksPage"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090040

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090049

    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserBookmarksPage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "%s"

    invoke-virtual {v4, v8, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090010

    new-instance v5, Lcom/android/browser/BrowserBookmarksPage$5;

    invoke-direct {v5, p0, v0}, Lcom/android/browser/BrowserBookmarksPage$5;-><init>(Lcom/android/browser/BrowserBookmarksPage;I)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

 #   goto :goto_0
    return-void   #djp952:added
.end method

.method private displayRemoveFolderDialog(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 1050
    move v0, p1

    .line 1051
    .local v0, deletePos:I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090040

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09013c

    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserBookmarksPage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s"

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->getFolderName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090010

    new-instance v3, Lcom/android/browser/BrowserBookmarksPage$4;

    invoke-direct {v3, p0, v0}, Lcom/android/browser/BrowserBookmarksPage$4;-><init>(Lcom/android/browser/BrowserBookmarksPage;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09000f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1064
    return-void
.end method

.method private editBookmark(I)V
    .locals 6
    .parameter "position"

    .prologue
    .line 966
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->getBookmarkTitle(I)Ljava/lang/String;

    move-result-object v1

    .line 967
    .local v1, title:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v2

    .line 969
    .local v2, url:Ljava/lang/String;
    const-string v3, "VZW Home"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "http://converge.vzwwap.com/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "My Verizon"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "https://mobile.vzw.com/sspostmw/forms/myacc.jsp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 972
    :cond_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090045

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090046

    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserBookmarksPage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "%s"

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f09000f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 985
    :goto_0
    return-void

    .line 981
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/browser/AddBookmarkPage;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 982
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "bookmark"

    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->getRow(I)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 983
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/android/browser/BrowserBookmarksPage;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private editFolder(Ljava/lang/String;)V
    .locals 8
    .parameter "title"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 907
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/android/browser/AddFolderPage;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 909
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 911
    .local v2, map:Landroid/os/Bundle;
    const-string v4, " title like ?"

    .line 912
    .local v4, whereClause:Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/String;

    aput-object p1, v3, v7

    .line 914
    .local v3, selectionArg:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4, v3}, Landroid/provider/Browser;->getAllFoldersWithFields(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 916
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 917
    const-string v5, "title"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    const-string v5, "id"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 922
    const-string v5, "folder"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 923
    const/4 v5, 0x2

    invoke-virtual {p0, v1, v5}, Lcom/android/browser/BrowserBookmarksPage;->startActivityForResult(Landroid/content/Intent;I)V

    .line 924
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 925
    return-void
.end method

.method private getFavIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "url"

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getTouchIcon(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "position"

    .prologue
    .line 1141
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
    .line 827
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 828
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/android/browser/BrowserBookmarksPage;->setResultToParent(ILandroid/content/Intent;)V

    .line 829
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->finish()V

    .line 830
    return-void
.end method

.method private openInNewWindow(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 950
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 951
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "new_window"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 952
    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/browser/BrowserBookmarksPage;->setResultToParent(ILandroid/content/Intent;)V

    .line 955
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->finish()V

    .line 956
    return-void
.end method

.method private refreshList()V
    .locals 1

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-nez v0, :cond_0

    .line 1114
    :goto_0
    return-void

    .line 1113
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0}, Lcom/android/browser/BrowserBookmarksAdapter;->refreshList()V

    goto :goto_0
.end method

.method private saveCurrentPage()V
    .locals 4

    .prologue
    .line 817
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/browser/AddBookmarkPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 820
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "folder"

    iget v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolder:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 822
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 823
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserBookmarksPage;->startActivityForResult(Landroid/content/Intent;I)V

    .line 824
    return-void
.end method

.method private setResultToParent(ILandroid/content/Intent;)V
    .locals 1
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1210
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 1211
    .local v0, parent:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 1212
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/BrowserBookmarksPage;->setResult(ILandroid/content/Intent;)V

    .line 1217
    .end local v0           #parent:Landroid/app/Activity;
    :goto_0
    return-void

    .line 1214
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

    .line 385
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    if-ne v4, p1, :cond_0

    .line 535
    :goto_0
    return-void

    .line 389
    :cond_0
    iput-object p1, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    .line 392
    invoke-virtual {p0, v6}, Lcom/android/browser/BrowserBookmarksPage;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 393
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    iget-boolean v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-eqz v4, :cond_9

    .line 394
    const-string v4, "pref_most_visited_view_mode"

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    invoke-virtual {v5}, Lcom/android/browser/BookmarkViewMode;->ordinal()I

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 398
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 400
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-eqz v4, :cond_1

    .line 401
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v4, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->switchViewMode(Lcom/android/browser/BookmarkViewMode;)V

    .line 403
    :cond_1
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    sget-object v5, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    if-ne v4, v5, :cond_c

    .line 404
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    if-nez v4, :cond_6

    .line 405
    new-instance v4, Landroid/widget/GridView;

    invoke-direct {v4, p0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    .line 406
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-eqz v4, :cond_2

    .line 407
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 409
    :cond_2
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 410
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    invoke-virtual {v4, v8}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 411
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    invoke-static {p0}, Lcom/android/browser/BrowserActivity;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 413
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    invoke-virtual {v4, v7}, Landroid/widget/GridView;->setFocusable(Z)V

    .line 414
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    invoke-virtual {v4, v7}, Landroid/widget/GridView;->setFocusableInTouchMode(Z)V

    .line 415
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    const v5, 0x108001c

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setSelector(I)V

    .line 416
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    .line 417
    .local v0, density:F
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    const/high16 v5, 0x4160

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 418
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    const/high16 v5, 0x4100

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 419
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    invoke-virtual {v4, v7}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 420
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    const/high16 v5, 0x100

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setScrollBarStyle(I)V

    .line 421
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    invoke-virtual {v4, v7}, Landroid/widget/GridView;->setDrawSelectorOnTop(Z)V

    .line 424
    iget-boolean v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-nez v4, :cond_4

    .line 425
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    if-nez v4, :cond_a

    .line 426
    new-instance v4, Lcom/android/browser/FolderItem;

    invoke-direct {v4, p0}, Lcom/android/browser/FolderItem;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    .line 427
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    invoke-virtual {v4, v10}, Lcom/android/browser/FolderItem;->setVisibility(I)V

    .line 433
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-eqz v4, :cond_b

    .line 434
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    iget v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolder:I

    invoke-virtual {v4, v5, v6}, Lcom/android/browser/BrowserBookmarksAdapter;->populateFolderItem(Lcom/android/browser/FolderItem;I)V

    .line 445
    :cond_4
    :goto_3
    iget-boolean v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-eqz v4, :cond_5

    .line 446
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mEmptyView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 448
    :cond_5
    iget-boolean v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCreateShortcut:Z

    if-nez v4, :cond_6

    .line 449
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    invoke-virtual {v4, p0}, Landroid/widget/GridView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 453
    .end local v0           #density:F
    :cond_6
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridLayout:Landroid/widget/LinearLayout;

    .line 454
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 457
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mVerticalList:Landroid/widget/ListView;

    if-eqz v4, :cond_7

    .line 458
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mVerticalList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 459
    .local v3, parent:Landroid/view/ViewGroup;
    if-eqz v3, :cond_7

    .line 460
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mVerticalList:Landroid/widget/ListView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 461
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 465
    .end local v3           #parent:Landroid/view/ViewGroup;
    :cond_7
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mListLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_8

    .line 466
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 467
    .restart local v3       #parent:Landroid/view/ViewGroup;
    if-eqz v3, :cond_8

    .line 468
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 472
    .end local v3           #parent:Landroid/view/ViewGroup;
    :cond_8
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 473
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 474
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridLayout:Landroid/widget/LinearLayout;

    sget-object v5, Lcom/android/browser/BrowserBookmarksPage;->FULL_SCREEN_PARAMS:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v4, v5}, Lcom/android/browser/BrowserBookmarksPage;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 396
    :cond_9
    const-string v4, "pref_bookmark_view_mode"

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    invoke-virtual {v5}, Lcom/android/browser/BookmarkViewMode;->ordinal()I

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 428
    .restart local v0       #density:F
    :cond_a
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    invoke-virtual {v4}, Lcom/android/browser/FolderItem;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 429
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    invoke-virtual {v4}, Lcom/android/browser/FolderItem;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 439
    :cond_b
    const-string v4, "browser"

    const-string v5, "BrowserBookmarksPage: switchViewMode() mBookmarksAdapter is null"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 478
    .end local v0           #density:F
    :cond_c
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mVerticalList:Landroid/widget/ListView;

    if-nez v4, :cond_12

    .line 479
    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 480
    .local v2, listView:Landroid/widget/ListView;
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-eqz v4, :cond_d

    .line 481
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 483
    :cond_d
    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 484
    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 485
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 488
    iget-boolean v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-nez v4, :cond_f

    .line 489
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    if-nez v4, :cond_15

    .line 490
    new-instance v4, Lcom/android/browser/FolderItem;

    invoke-direct {v4, p0}, Lcom/android/browser/FolderItem;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    .line 491
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    invoke-virtual {v4, v10}, Lcom/android/browser/FolderItem;->setVisibility(I)V

    .line 497
    :cond_e
    :goto_4
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    if-nez v4, :cond_f

    .line 498
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    iget v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolder:I

    invoke-virtual {v4, v5, v6}, Lcom/android/browser/BrowserBookmarksAdapter;->populateFolderItem(Lcom/android/browser/FolderItem;I)V

    .line 504
    :cond_f
    iget-boolean v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-eqz v4, :cond_10

    .line 505
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 507
    :cond_10
    iget-boolean v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCreateShortcut:Z

    if-nez v4, :cond_11

    .line 508
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 510
    :cond_11
    iput-object v2, p0, Lcom/android/browser/BrowserBookmarksPage;->mVerticalList:Landroid/widget/ListView;

    .line 514
    .end local v2           #listView:Landroid/widget/ListView;
    :cond_12
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mListLayout:Landroid/widget/LinearLayout;

    .line 515
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 518
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    if-eqz v4, :cond_13

    .line 519
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 520
    .restart local v3       #parent:Landroid/view/ViewGroup;
    if-eqz v3, :cond_13

    .line 521
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mGridPage:Landroid/widget/GridView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 522
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 526
    .end local v3           #parent:Landroid/view/ViewGroup;
    :cond_13
    iget-boolean v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-nez v4, :cond_14

    .line 527
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mListLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    :cond_14
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mListLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mVerticalList:Landroid/widget/ListView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 531
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mListLayout:Landroid/widget/LinearLayout;

    sget-object v5, Lcom/android/browser/BrowserBookmarksPage;->FULL_SCREEN_PARAMS:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v4, v5}, Lcom/android/browser/BrowserBookmarksPage;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 492
    .restart local v2       #listView:Landroid/widget/ListView;
    :cond_15
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    invoke-virtual {v4}, Lcom/android/browser/FolderItem;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 493
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    invoke-virtual {v4}, Lcom/android/browser/FolderItem;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4
.end method


# virtual methods
.method public deleteBookmark(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-nez v0, :cond_0

    .line 1196
    :goto_0
    return-void

    .line 1195
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->deleteRow(I)V

    goto :goto_0
.end method

.method public deleteFolder(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->deleteFolderRow(I)V

    .line 1187
    return-void
.end method

.method public expandFolder(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1170
    return-void
.end method

.method public getBookmarkTitle(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 1157
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
    .line 1136
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

.method public getFolderName(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getFolderName(Lcom/android/browser/BrowserBookmarksPage;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRow(I)Landroid/os/Bundle;
    .locals 1
    .parameter "position"

    .prologue
    .line 1120
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
    .line 1128
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
    .line 1178
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/browser/BrowserBookmarksAdapter;->isFolderItem(Lcom/android/browser/BrowserBookmarksPage;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, -0x1

    const-string v7, "title"

    .line 990
    packed-switch p1, :pswitch_data_0

    .line 1044
    :cond_0
    :goto_0
    return-void

    .line 992
    :pswitch_0
    if-ne p2, v6, :cond_0

    .line 994
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 997
    const-string v6, "title"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 998
    .local v4, title:Ljava/lang/String;
    const-string v6, "url"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1000
    .local v5, url:Ljava/lang/String;
    const-string v6, "folder"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1001
    .local v1, folder:I
    const-string v6, "shortcut"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1002
    .local v3, shortcut:Z
    const-string v6, "browser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BrowserBookmarksPage: onActivityResult() folder = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " title="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " url = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " shortcut = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    if-eqz v3, :cond_1

    .line 1005
    invoke-direct {p0, v5, v4}, Lcom/android/browser/BrowserBookmarksPage;->createShortcutIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1006
    .local v2, send:Landroid/content/Intent;
    const-string v6, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1007
    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserBookmarksPage;->sendBroadcast(Landroid/content/Intent;)V

    .line 1010
    .end local v2           #send:Landroid/content/Intent;
    :cond_1
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 1011
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v6, v0}, Lcom/android/browser/BrowserBookmarksAdapter;->updateRow(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1016
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #folder:I
    .end local v3           #shortcut:Z
    .end local v4           #title:Ljava/lang/String;
    .end local v5           #url:Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->refreshList()V

    goto :goto_0

    .line 1023
    :pswitch_1
    if-ne p2, v6, :cond_0

    .line 1025
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .restart local v0       #extras:Landroid/os/Bundle;
    if-eqz v0, :cond_3

    .line 1028
    const-string v6, "title"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1029
    .restart local v4       #title:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1030
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v6, v0}, Lcom/android/browser/BrowserBookmarksAdapter;->updateFolderRow(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1035
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v4           #title:Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->refreshList()V

    goto/16 :goto_0

    .line 990
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1200
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/browser/BrowserBookmarksPage;->setResultToParent(ILandroid/content/Intent;)V

    .line 1201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCanceled:Z

    .line 1202
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1203
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .parameter "item"

    .prologue
    const/4 v13, 0x1

    .line 106
    iget-boolean v8, p0, Lcom/android/browser/BrowserBookmarksPage;->mCanceled:Z

    if-eqz v8, :cond_0

    move v8, v13

    .line 207
    :goto_0
    return v8

    .line 109
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v3

    check-cast v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 112
    .local v3, i:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    if-nez v3, :cond_1

    move v8, v13

    .line 113
    goto :goto_0

    .line 116
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 205
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v8

    goto :goto_0

    .line 120
    :sswitch_0
    iget-object v8, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    sget-object v9, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    if-ne v8, v9, :cond_2

    .line 121
    iget v8, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v8}, Lcom/android/browser/BrowserBookmarksPage;->getFolderName(I)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, folderName:Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/browser/BrowserBookmarksPage;->editFolder(Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->refreshList()V

    .end local v1           #folderName:Ljava/lang/String;
    :goto_2
    move v8, v13

    .line 207
    goto :goto_0

    .line 125
    :cond_2
    iget-object v0, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v0, Lcom/android/browser/FolderItem;

    .line 126
    .local v0, folderItem:Lcom/android/browser/FolderItem;
    invoke-virtual {v0}, Lcom/android/browser/FolderItem;->getName()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #folderName:Ljava/lang/String;
    goto :goto_1

    .line 132
    .end local v0           #folderItem:Lcom/android/browser/FolderItem;
    .end local v1           #folderName:Ljava/lang/String;
    :sswitch_1
    iget v8, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v8}, Lcom/android/browser/BrowserBookmarksPage;->displayRemoveFolderDialog(I)V

    goto :goto_2

    .line 136
    :sswitch_2
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->saveCurrentPage()V

    goto :goto_2

    .line 139
    :sswitch_3
    iget v8, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v8}, Lcom/android/browser/BrowserBookmarksPage;->loadUrl(I)V

    goto :goto_2

    .line 142
    :sswitch_4
    iget v8, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v8}, Lcom/android/browser/BrowserBookmarksPage;->editBookmark(I)V

    goto :goto_2

    .line 145
    :sswitch_5
    iget v8, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v8}, Lcom/android/browser/BrowserBookmarksPage;->createShortcutIntent(I)Landroid/content/Intent;

    move-result-object v6

    .line 146
    .local v6, send:Landroid/content/Intent;
    const-string v8, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    invoke-virtual {p0, v6}, Lcom/android/browser/BrowserBookmarksPage;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 150
    .end local v6           #send:Landroid/content/Intent;
    :sswitch_6
    iget-boolean v8, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-eqz v8, :cond_3

    .line 151
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget v9, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v9}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/provider/Browser;->deleteFromHistory(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 153
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->refreshList()V

    goto :goto_2

    .line 155
    :cond_3
    iget v8, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v8}, Lcom/android/browser/BrowserBookmarksPage;->displayRemoveBookmarkDialog(I)V

    goto :goto_2

    .line 159
    :sswitch_7
    iget v8, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v8}, Lcom/android/browser/BrowserBookmarksPage;->openInNewWindow(I)V

    goto :goto_2

    .line 162
    :sswitch_8
    iget-object v8, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget v9, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v8, v9}, Lcom/android/browser/BrowserBookmarksAdapter;->getTitle(I)Ljava/lang/String;

    move-result-object v8

    iget v9, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v9}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v9

    iget v10, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v10}, Lcom/android/browser/BrowserBookmarksPage;->getFavicon(I)Landroid/graphics/Bitmap;

    move-result-object v10

    iget-object v11, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget v12, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v11, v12}, Lcom/android/browser/BrowserBookmarksAdapter;->getScreenshot(I)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-static {p0, v8, v9, v10, v11}, Lcom/android/browser/BrowserActivity;->sharePage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 168
    :sswitch_9
    iget v8, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v8}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/browser/BrowserBookmarksPage;->copy(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 171
    :sswitch_a
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v8

    iget v9, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v9}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, p0, v9}, Lcom/android/browser/BrowserSettings;->setHomePage(Landroid/content/Context;Ljava/lang/String;)V

    .line 173
    const v8, 0x7f09003b

    invoke-static {p0, v8, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 181
    :sswitch_b
    iget-object v8, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    sget-object v9, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    if-ne v8, v9, :cond_4

    .line 182
    iget-object v8, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget v9, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v8, v9}, Lcom/android/browser/BrowserBookmarksAdapter;->getIsBookmark(I)Z

    move-result v4

    .line 183
    .local v4, isBookmark:Z
    iget-object v8, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget v9, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v8, v9}, Lcom/android/browser/BrowserBookmarksAdapter;->getTitle(I)Ljava/lang/String;

    move-result-object v5

    .line 184
    .local v5, name:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget v9, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v8, v9}, Lcom/android/browser/BrowserBookmarksAdapter;->getUrl(I)Ljava/lang/String;

    move-result-object v7

    .line 193
    .local v7, url:Ljava/lang/String;
    :goto_3
    if-eqz v4, :cond_6

    .line 194
    const-string v8, "VZW Home"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "My Verizon"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 195
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {p0, v8, v7, v5}, Lcom/android/browser/Bookmarks;->removeFromBookmarks(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 186
    .end local v4           #isBookmark:Z
    .end local v5           #name:Ljava/lang/String;
    .end local v7           #url:Ljava/lang/String;
    :cond_4
    iget-object v2, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v2, Lcom/android/browser/HistoryItem;

    .line 187
    .local v2, historyItem:Lcom/android/browser/HistoryItem;
    invoke-virtual {v2}, Lcom/android/browser/HistoryItem;->isBookmark()Z

    move-result v4

    .line 188
    .restart local v4       #isBookmark:Z
    invoke-virtual {v2}, Lcom/android/browser/HistoryItem;->getName()Ljava/lang/String;

    move-result-object v5

    .line 189
    .restart local v5       #name:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/browser/HistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #url:Ljava/lang/String;
    goto :goto_3

    .line 197
    .end local v2           #historyItem:Lcom/android/browser/HistoryItem;
    :cond_5
    const v8, 0x7f090048

    invoke-virtual {p0, v8}, Lcom/android/browser/BrowserBookmarksPage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "%s"

    invoke-virtual {v8, v9, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 201
    :cond_6
    invoke-static {p0, v5, v7}, Landroid/provider/Browser;->saveBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 116
    :sswitch_data_0
    .sparse-switch
        0x7f0d0089 -> :sswitch_2
        0x7f0d008e -> :sswitch_3
        0x7f0d008f -> :sswitch_7
        0x7f0d0090 -> :sswitch_4
        0x7f0d0091 -> :sswitch_5
        0x7f0d0092 -> :sswitch_8
        0x7f0d0093 -> :sswitch_9
        0x7f0d0094 -> :sswitch_6
        0x7f0d0095 -> :sswitch_a
        0x7f0d00d3 -> :sswitch_0
        0x7f0d00d4 -> :sswitch_1
        0x7f0d00d6 -> :sswitch_b
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/4 v12, 0x0

    .line 311
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 314
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mIconSize:I

    .line 317
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 318
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCreateShortcut:Z

    .line 321
    :cond_0
    const-string v0, "disable_new_window"

    invoke-virtual {v7, v0, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mDisableNewWindow:Z

    .line 323
    const-string v0, "mostVisited"

    invoke-virtual {v7, v0, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    .line 325
    iget-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCreateShortcut:Z

    if-eqz v0, :cond_1

    .line 326
    const v0, 0x7f090067

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->setTitle(I)V

    .line 329
    :cond_1
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->setContentView(I)V

    .line 330
    const v0, 0x7f0d003d

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mEmptyView:Landroid/view/View;

    .line 331
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 333
    const v0, 0x7f0d003f

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 334
    .local v8, mEmptyText:Landroid/widget/TextView;
    const v0, 0x7f09010e

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    .line 336
    invoke-virtual {p0, v12}, Lcom/android/browser/BrowserBookmarksPage;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 338
    .local v9, p:Landroid/content/SharedPreferences;
    iput v12, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolder:I

    .line 342
    sget-object v10, Lcom/android/browser/BookmarkViewMode;->NONE:Lcom/android/browser/BookmarkViewMode;

    .line 343
    .local v10, preference:Lcom/android/browser/BookmarkViewMode;
    iget-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-eqz v0, :cond_2

    .line 345
    sget-object v10, Lcom/android/browser/BookmarkViewMode;->LIST:Lcom/android/browser/BookmarkViewMode;

    .line 350
    :goto_0
    invoke-direct {p0, v10}, Lcom/android/browser/BrowserBookmarksPage;->switchViewMode(Lcom/android/browser/BookmarkViewMode;)V

    .line 352
    iget-boolean v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mCreateShortcut:Z

    .line 353
    .local v5, createShortcut:Z
    iget-boolean v6, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    .line 354
    .local v6, mostVisited:Z
    const-string v0, "url"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 355
    .local v2, url:Ljava/lang/String;
    const-string v0, "title"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 356
    .local v3, title:Ljava/lang/String;
    const-string v0, "thumbnail"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 358
    .local v4, thumbnail:Landroid/graphics/Bitmap;
    new-instance v0, Lcom/android/browser/BrowserBookmarksPage$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/browser/BrowserBookmarksPage$1;-><init>(Lcom/android/browser/BrowserBookmarksPage;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZZ)V

    new-array v1, v12, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserBookmarksPage$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 372
    return-void

    .line 347
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

    .line 213
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v3, v0

    .line 216
    .local v3, i:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    const/4 v6, 0x0

    .line 218
    .local v6, mFolder:Z
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    .line 219
    .local v4, inflater:Landroid/view/MenuInflater;
    iget-boolean v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-eqz v7, :cond_1

    .line 220
    const v7, 0x7f0c000b

    invoke-virtual {v4, v7, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 233
    :goto_0
    iget v7, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-nez v7, :cond_4

    iget-boolean v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-nez v7, :cond_4

    .line 234
    const v7, 0x7f0d008d

    invoke-interface {p1, v7, v9}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 235
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mAddHeader:Lcom/android/browser/AddNewBookmark;

    if-nez v7, :cond_3

    .line 236
    new-instance v7, Lcom/android/browser/AddNewBookmark;

    invoke-direct {v7, p0}, Lcom/android/browser/AddNewBookmark;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mAddHeader:Lcom/android/browser/AddNewBookmark;

    .line 241
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mAddHeader:Lcom/android/browser/AddNewBookmark;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "url"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/browser/AddNewBookmark;->setUrl(Ljava/lang/String;)V

    .line 242
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mAddHeader:Lcom/android/browser/AddNewBookmark;

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 304
    :goto_2
    return-void

    .line 223
    :cond_1
    iget-object v7, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    iget v8, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v7, v8}, Lcom/android/browser/BrowserBookmarksPage;->isFolderItem(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 225
    const v7, 0x7f0c0009

    invoke-virtual {v4, v7, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 226
    const/4 v6, 0x1

    goto :goto_0

    .line 230
    :cond_2
    const v7, 0x7f0c0001

    invoke-virtual {v4, v7, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 237
    :cond_3
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mAddHeader:Lcom/android/browser/AddNewBookmark;

    invoke-virtual {v7}, Lcom/android/browser/AddNewBookmark;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 238
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mAddHeader:Lcom/android/browser/AddNewBookmark;

    invoke-virtual {v7}, Lcom/android/browser/AddNewBookmark;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/browser/BrowserBookmarksPage;->mAddHeader:Lcom/android/browser/AddNewBookmark;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 245
    :cond_4
    iget-boolean v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-eqz v7, :cond_b

    .line 246
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

    .line 249
    :cond_6
    const v7, 0x7f0d00d6

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 251
    .local v5, item:Landroid/view/MenuItem;
    const v7, 0x7f090036

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 257
    .end local v5           #item:Landroid/view/MenuItem;
    :cond_7
    :goto_3
    iget-boolean v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mDisableNewWindow:Z

    if-eqz v7, :cond_8

    .line 258
    if-nez v6, :cond_8

    .line 259
    const v7, 0x7f0d008f

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 261
    :cond_8
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    if-nez v7, :cond_c

    .line 262
    new-instance v7, Lcom/android/browser/BookmarkItem;

    invoke-direct {v7, p0}, Lcom/android/browser/BookmarkItem;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    .line 270
    :cond_9
    :goto_4
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mFolderContextHeader:Lcom/android/browser/FolderItem;

    if-nez v7, :cond_d

    .line 271
    new-instance v7, Lcom/android/browser/FolderItem;

    invoke-direct {v7, p0}, Lcom/android/browser/FolderItem;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mFolderContextHeader:Lcom/android/browser/FolderItem;

    .line 277
    :cond_a
    :goto_5
    iget-object v7, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    iget v8, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v7, v8}, Lcom/android/browser/BrowserBookmarksPage;->isFolderItem(Landroid/view/View;I)Z

    move-result v7

    if-nez v7, :cond_f

    .line 280
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    sget-object v8, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    if-ne v7, v8, :cond_e

    .line 281
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget-object v8, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    iget v9, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v7, v8, v9}, Lcom/android/browser/BrowserBookmarksAdapter;->populateBookmarkItem(Lcom/android/browser/BookmarkItem;I)V

    .line 287
    :goto_6
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    goto/16 :goto_2

    .line 255
    :cond_b
    const v7, 0x7f0d008c

    invoke-interface {p1, v7, v9}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    goto :goto_3

    .line 263
    :cond_c
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    invoke-virtual {v7}, Lcom/android/browser/BookmarkItem;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 264
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    invoke-virtual {v7}, Lcom/android/browser/BookmarkItem;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4

    .line 272
    :cond_d
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mFolderContextHeader:Lcom/android/browser/FolderItem;

    invoke-virtual {v7}, Lcom/android/browser/FolderItem;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 273
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mFolderContextHeader:Lcom/android/browser/FolderItem;

    invoke-virtual {v7}, Lcom/android/browser/FolderItem;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/browser/BrowserBookmarksPage;->mFolderContextHeader:Lcom/android/browser/FolderItem;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_5

    .line 284
    :cond_e
    iget-object v1, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v1, Lcom/android/browser/BookmarkItem;

    .line 285
    .local v1, b:Lcom/android/browser/BookmarkItem;
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    invoke-virtual {v1, v7}, Lcom/android/browser/BookmarkItem;->copyTo(Lcom/android/browser/BookmarkItem;)V

    goto :goto_6

    .line 292
    .end local v1           #b:Lcom/android/browser/BookmarkItem;
    :cond_f
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    sget-object v8, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    if-ne v7, v8, :cond_10

    .line 293
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    iget-object v8, p0, Lcom/android/browser/BrowserBookmarksPage;->mFolderContextHeader:Lcom/android/browser/FolderItem;

    iget v9, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v7, v8, v9}, Lcom/android/browser/BrowserBookmarksAdapter;->populateFolderItem(Lcom/android/browser/FolderItem;I)V

    .line 299
    :goto_7
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mFolderContextHeader:Lcom/android/browser/FolderItem;

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    goto/16 :goto_2

    .line 296
    :cond_10
    iget-object v2, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v2, Lcom/android/browser/FolderItem;

    .line 297
    .local v2, f:Lcom/android/browser/FolderItem;
    iget-object v7, p0, Lcom/android/browser/BrowserBookmarksPage;->mFolderContextHeader:Lcom/android/browser/FolderItem;

    invoke-virtual {v2, v7}, Lcom/android/browser/FolderItem;->copyTo(Lcom/android/browser/FolderItem;)V

    goto :goto_7
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 834
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 835
    .local v1, result:Z
    iget-boolean v2, p0, Lcom/android/browser/BrowserBookmarksPage;->mCreateShortcut:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-nez v2, :cond_0

    .line 836
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 837
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v2, 0x7f0c

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 838
    const/4 v2, 0x1

    .line 840
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :goto_0
    return v2

    :cond_0
    move v2, v1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 377
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 378
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 930
    packed-switch p1, :pswitch_data_0

    .line 943
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 945
    :goto_0
    return v0

    .line 932
    :pswitch_0
    iget v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolder:I

    if-eqz v0, :cond_0

    .line 934
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/browser/BrowserBookmarksPage;->showFolder(Landroid/view/View;I)V

    .line 935
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolderView:Lcom/android/browser/FolderItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/browser/FolderItem;->setVisibility(I)V

    .line 936
    iput v2, p0, Lcom/android/browser/BrowserBookmarksPage;->mCurrentFolder:I

    .line 945
    const/4 v0, 0x1

    goto :goto_0

    .line 939
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 930
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

    .line 868
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 891
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 893
    :goto_0
    return v0

    .line 870
    :pswitch_0
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->saveCurrentPage()V

    :goto_1
    move v0, v2

    .line 893
    goto :goto_0

    .line 876
    :pswitch_1
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->createFolder()V

    .line 877
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->refreshList()V

    move v0, v2

    .line 878
    goto :goto_0

    .line 883
    :pswitch_2
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    sget-object v1, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    if-ne v0, v1, :cond_0

    .line 884
    sget-object v0, Lcom/android/browser/BookmarkViewMode;->LIST:Lcom/android/browser/BookmarkViewMode;

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->switchViewMode(Lcom/android/browser/BookmarkViewMode;)V

    goto :goto_1

    .line 886
    :cond_0
    sget-object v0, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->switchViewMode(Lcom/android/browser/BookmarkViewMode;)V

    goto :goto_1

    .line 868
    :pswitch_data_0
    .packed-switch 0x7f0d0089
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    .line 845
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 846
    .local v1, result:Z
    iget-boolean v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCreateShortcut:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mMostVisited:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v4}, Lcom/android/browser/BrowserBookmarksAdapter;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v4, v1

    .line 863
    :goto_0
    return v4

    .line 851
    :cond_1
    const v4, 0x7f0d008a

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 854
    .local v2, switchItem:Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mViewMode:Lcom/android/browser/BookmarkViewMode;

    sget-object v5, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    if-ne v4, v5, :cond_2

    .line 855
    const v3, 0x7f090043

    .line 856
    .local v3, titleResId:I
    const v0, 0x7f02002d

    .line 861
    .local v0, iconResId:I
    :goto_1
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 862
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 863
    const/4 v4, 0x1

    goto :goto_0

    .line 858
    .end local v0           #iconResId:I
    .end local v3           #titleResId:I
    :cond_2
    const v3, 0x7f090042

    .line 859
    .restart local v3       #titleResId:I
    const v0, 0x7f020039

    .restart local v0       #iconResId:I
    goto :goto_1
.end method

.method public showFolder(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "folder"

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/browser/BrowserBookmarksAdapter;->showFolder(Lcom/android/browser/BrowserBookmarksPage;Landroid/view/View;I)V

    .line 1175
    return-void
.end method
