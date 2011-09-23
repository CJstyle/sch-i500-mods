.class public Lcom/sec/android/app/camera/MenuHelper;
.super Ljava/lang/Object;
.source "MenuHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/MenuHelper$UpdateLocationCallback;,
        Lcom/sec/android/app/camera/MenuHelper$MenuCallback;,
        Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;,
        Lcom/sec/android/app/camera/MenuHelper$MenuItemsResult;
    }
.end annotation


# static fields
.field public static final CANNOT_STAT_ERROR:I = -0x2

.field public static final EMPTY_STRING:Ljava/lang/String; = ""

.field public static final INCLUDE_ALL:I = -0x1

.field public static final INCLUDE_CROP_MENU:I = 0x8

.field public static final INCLUDE_DELETE_MENU:I = 0x10

.field public static final INCLUDE_DETAILS_MENU:I = 0x40

.field public static final INCLUDE_ROTATE_MENU:I = 0x20

.field public static final INCLUDE_SET_MENU:I = 0x4

.field public static final INCLUDE_SHARE_MENU:I = 0x2

.field public static final INCLUDE_SHOWMAP_MENU:I = 0x80

.field public static final INCLUDE_VIEWPLAY_MENU:I = 0x1

.field public static final INVALID_LATLNG:F = 255.0f

.field public static final JPEG_MIME_TYPE:Ljava/lang/String; = "image/jpeg"

.field public static final MENU_IMAGE_SHARE:I = 0x1

.field public static final MENU_IMAGE_SHOWMAP:I = 0x2

.field public static final NO_STORAGE_ERROR:I = -0x1

.field public static final POSITION_CAMERA_SETTING:I = 0xf

.field public static final POSITION_CAPTURE_PICTURE:I = 0x4

.field public static final POSITION_CAPTURE_VIDEO:I = 0x5

.field public static final POSITION_DETAILS:I = 0xb

.field public static final POSITION_GALLERY_SETTING:I = 0x10

.field public static final POSITION_GOTO_GALLERY:I = 0x2

.field public static final POSITION_IMAGE_CROP:I = 0x9

.field public static final POSITION_IMAGE_ROTATE:I = 0x7

.field public static final POSITION_IMAGE_SET:I = 0xa

.field public static final POSITION_IMAGE_SHARE:I = 0x6

.field public static final POSITION_IMAGE_TOSS:I = 0x8

.field public static final POSITION_MULTISELECT:I = 0xe

.field public static final POSITION_SHOWMAP:I = 0xc

.field public static final POSITION_SLIDESHOW:I = 0xd

.field public static final POSITION_SWITCH_CAMERA_MODE:I = 0x1

.field public static final POSITION_VIEWPLAY:I = 0x3

.field public static final RESULT_COMMON_MENU_CROP:I = 0x1ea

.field private static final TAG:Ljava/lang/String; = "MenuHelper"

.field protected static mDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/camera/MenuHelper;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    return-void
.end method

.method static synthetic access$000(Landroid/view/View;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/MenuHelper;->setDetailsValue(Landroid/view/View;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Landroid/view/View;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-static {p0, p1}, Lcom/sec/android/app/camera/MenuHelper;->hideDetailsRow(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;Landroid/os/Handler;Landroid/app/Activity;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/MenuHelper;->onDetailsClicked(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;Landroid/os/Handler;Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;Landroid/os/Handler;Landroid/app/Activity;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/MenuHelper;->onShowMapClicked(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;Landroid/os/Handler;Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;Landroid/app/Activity;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-static {p0, p1}, Lcom/sec/android/app/camera/MenuHelper;->onViewPlayClicked(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/gallery/IImage;)Landroid/media/ExifInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-static {p0}, Lcom/sec/android/app/camera/MenuHelper;->getExif(Lcom/sec/android/app/camera/gallery/IImage;)Landroid/media/ExifInterface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/gallery/IImage;Landroid/view/View;Landroid/app/Activity;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/MenuHelper;->showExifInformation(Lcom/sec/android/app/camera/gallery/IImage;Landroid/view/View;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$400(Landroid/view/View;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-static {p0}, Lcom/sec/android/app/camera/MenuHelper;->hideExifInformation(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-static {p0, p1}, Lcom/sec/android/app/camera/MenuHelper;->onRotateClicked(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;Landroid/app/Activity;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-static {p0, p1}, Lcom/sec/android/app/camera/MenuHelper;->onCropClicked(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;Landroid/app/Activity;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-static {p0, p1}, Lcom/sec/android/app/camera/MenuHelper;->onSetAsClicked(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;Landroid/app/Activity;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-static {p0, p1}, Lcom/sec/android/app/camera/MenuHelper;->onImageShareClicked(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;Landroid/app/Activity;Ljava/lang/Runnable;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/MenuHelper;->onDeleteClicked(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;Landroid/app/Activity;Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method static addImageMenuItems(Landroid/view/Menu;ILandroid/app/Activity;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;)Lcom/sec/android/app/camera/MenuHelper$MenuItemsResult;
    .locals 8
    .parameter "menu"
    .parameter "inclusions"
    .parameter "activity"
    .parameter "handler"
    .parameter "onDelete"
    .parameter "onInvoke"

    .prologue
    .line 685
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 687
    .local v4, requiresWriteAccessItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/MenuItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 689
    .local v2, requiresNoDrmAccessItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/MenuItem;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 691
    .local v1, requiresImageItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/MenuItem;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 694
    .local v3, requiresVideoItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/MenuItem;>;"
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_0

    .line 695
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const v7, 0x7f0700ed

    invoke-interface {p0, v0, v5, v6, v7}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v0

    const v5, 0x108004d

    invoke-interface {v0, v5}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v6

    .line 702
    .local v6, rotateSubmenu:Landroid/view/SubMenu;
    const v0, 0x7f0700f4

    invoke-interface {v6, v0}, Landroid/view/SubMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v5, Lcom/sec/android/app/camera/MenuHelper$9;

    invoke-direct {v5, p5}, Lcom/sec/android/app/camera/MenuHelper$9;-><init>(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;)V

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v5, 0x6c

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    .line 710
    .local v0, rotateLeft:Landroid/view/MenuItem;
    const v5, 0x7f0700f5

    invoke-interface {v6, v5}, Landroid/view/SubMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v5

    new-instance v7, Lcom/sec/android/app/camera/MenuHelper$10;

    invoke-direct {v7, p5}, Lcom/sec/android/app/camera/MenuHelper$10;-><init>(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;)V

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v5

    const/16 v7, 0x72

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v5

    .line 718
    .local v5, rotateRight:Landroid/view/MenuItem;
    invoke-interface {v6}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    invoke-interface {v6}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v6

    .end local v6           #rotateSubmenu:Landroid/view/SubMenu;
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    .end local v0           #rotateLeft:Landroid/view/MenuItem;
    .end local v5           #rotateRight:Landroid/view/MenuItem;
    :cond_0
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_1

    .line 728
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x9

    const v7, 0x7f0700f1

    invoke-interface {p0, v0, v5, v6, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 730
    .local v0, autoCrop:Landroid/view/MenuItem;
    const v5, 0x108003a

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 731
    new-instance v5, Lcom/sec/android/app/camera/MenuHelper$11;

    invoke-direct {v5, p5, p2}, Lcom/sec/android/app/camera/MenuHelper$11;-><init>(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;Landroid/app/Activity;)V

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 737
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    .end local v0           #autoCrop:Landroid/view/MenuItem;
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 742
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    const v7, 0x7f0700f0

    invoke-interface {p0, v0, v5, v6, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 744
    .local v0, setMenu:Landroid/view/MenuItem;
    const v5, 0x1080051

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 745
    new-instance v5, Lcom/sec/android/app/camera/MenuHelper$12;

    invoke-direct {v5, p5, p2}, Lcom/sec/android/app/camera/MenuHelper$12;-><init>(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;Landroid/app/Activity;)V

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 751
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    .end local v0           #setMenu:Landroid/view/MenuItem;
    :cond_2
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_3

    .line 755
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x6

    const v7, 0x7f0700ef

    invoke-interface {p0, v0, v5, v6, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v5, Lcom/sec/android/app/camera/MenuHelper$13;

    invoke-direct {v5, p5, p2}, Lcom/sec/android/app/camera/MenuHelper$13;-><init>(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;Landroid/app/Activity;)V

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 763
    .local v0, item1:Landroid/view/MenuItem;
    const v5, 0x1080052

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 764
    move-object v0, v0

    .line 765
    .local v0, item:Landroid/view/MenuItem;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_3
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_4

    .line 769
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const v7, 0x7f0700ee

    invoke-interface {p0, v0, v5, v6, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 771
    .local v0, deleteItem:Landroid/view/MenuItem;
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    new-instance v5, Lcom/sec/android/app/camera/MenuHelper$14;

    invoke-direct {v5, p5, p2, p4}, Lcom/sec/android/app/camera/MenuHelper$14;-><init>(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object p4

    .end local p4
    const/16 v0, 0x64

    invoke-interface {p4, v0}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .end local v0           #deleteItem:Landroid/view/MenuItem;
    move-result-object p4

    const v0, 0x108003c

    invoke-interface {p4, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 783
    :cond_4
    and-int/lit8 p4, p1, 0x40

    if-eqz p4, :cond_5

    .line 784
    const/4 p4, 0x0

    const/4 v0, 0x0

    const/16 v5, 0xb

    const v6, 0x7f0700ec

    invoke-interface {p0, p4, v0, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p4

    new-instance v0, Lcom/sec/android/app/camera/MenuHelper$15;

    invoke-direct {v0, p5, p3, p2}, Lcom/sec/android/app/camera/MenuHelper$15;-><init>(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;Landroid/os/Handler;Landroid/app/Activity;)V

    invoke-interface {p4, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object p4

    .line 791
    .local p4, detailsMenu:Landroid/view/MenuItem;
    const v0, 0x7f020054

    invoke-interface {p4, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 794
    .end local p4           #detailsMenu:Landroid/view/MenuItem;
    :cond_5
    and-int/lit16 p4, p1, 0x80

    if-eqz p4, :cond_6

    .line 795
    const/4 p4, 0x0

    const/4 v0, 0x2

    const/16 v5, 0xc

    const v6, 0x7f0700e3

    invoke-interface {p0, p4, v0, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p4

    .line 797
    .local p4, showOnMapItem:Landroid/view/MenuItem;
    new-instance v0, Lcom/sec/android/app/camera/MenuHelper$16;

    invoke-direct {v0, p5, p3, p2}, Lcom/sec/android/app/camera/MenuHelper$16;-><init>(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;Landroid/os/Handler;Landroid/app/Activity;)V

    invoke-interface {p4, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object p3

    .end local p3
    const v0, 0x7f020052

    invoke-interface {p3, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 804
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    .end local p4           #showOnMapItem:Landroid/view/MenuItem;
    :cond_6
    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_7

    .line 808
    .end local p1
    const/4 p1, 0x0

    const/4 p3, 0x0

    const/4 p4, 0x3

    const v0, 0x7f0700e4

    invoke-interface {p0, p1, p3, p4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p0

    .end local p0
    new-instance p1, Lcom/sec/android/app/camera/MenuHelper$17;

    invoke-direct {p1, p5, p2}, Lcom/sec/android/app/camera/MenuHelper$17;-><init>(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;Landroid/app/Activity;)V

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object p0

    .line 816
    .local p0, videoPlayItem:Landroid/view/MenuItem;
    const p1, 0x10801c8

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 818
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    .end local p0           #videoPlayItem:Landroid/view/MenuItem;
    :cond_7
    new-instance p0, Lcom/sec/android/app/camera/MenuHelper$18;

    invoke-direct {p0, v4, v2, v1, v3}, Lcom/sec/android/app/camera/MenuHelper$18;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public static calculatePicturesRemaining()I
    .locals 7

    .prologue
    .line 1023
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/camera/ImageManager;->hasStorage()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1024
    const/4 v5, -0x1

    .line 1038
    :goto_0
    return v5

    .line 1026
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1028
    .local v4, storageDirectory:Ljava/lang/String;
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1029
    .local v3, stat:Landroid/os/StatFs;
    const v0, 0x16e360

    .line 1030
    .local v0, PICTURE_BYTES:I
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    const v6, 0x49b71b00

    div-float v2, v5, v6

    .line 1032
    .local v2, remaining:F
    float-to-int v5, v2

    goto :goto_0

    .line 1034
    .end local v0           #PICTURE_BYTES:I
    .end local v2           #remaining:F
    .end local v3           #stat:Landroid/os/StatFs;
    .end local v4           #storageDirectory:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 1038
    .local v1, ex:Ljava/lang/Exception;
    const/4 v5, -0x2

    goto :goto_0
.end method

.method public static closeDialog()V
    .locals 1

    .prologue
    .line 928
    sget-object v0, Lcom/sec/android/app/camera/MenuHelper;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/MenuHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 929
    sget-object v0, Lcom/sec/android/app/camera/MenuHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 930
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/camera/MenuHelper;->mDialog:Landroid/app/AlertDialog;

    .line 931
    return-void
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 119
    if-eqz p0, :cond_0

    .line 121
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static confirmAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 4
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "action"

    .prologue
    .line 908
    new-instance v1, Lcom/sec/android/app/camera/MenuHelper$19;

    invoke-direct {v1, p3}, Lcom/sec/android/app/camera/MenuHelper$19;-><init>(Ljava/lang/Runnable;)V

    .line 916
    .local v1, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 917
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 923
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/camera/MenuHelper;->mDialog:Landroid/app/AlertDialog;

    .line 924
    sget-object v2, Lcom/sec/android/app/camera/MenuHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 925
    return-void
.end method

.method static deleteImage(Landroid/app/Activity;Ljava/lang/Runnable;Lcom/sec/android/app/camera/gallery/IImage;)V
    .locals 1
    .parameter "activity"
    .parameter "onDelete"
    .parameter "image"

    .prologue
    .line 873
    invoke-static {p2}, Lcom/sec/android/app/camera/ImageManager;->isImage(Lcom/sec/android/app/camera/gallery/IImage;)Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/camera/MenuHelper;->deleteImpl(Landroid/app/Activity;Ljava/lang/Runnable;Z)V

    .line 874
    return-void
.end method

.method static deleteImpl(Landroid/app/Activity;Ljava/lang/Runnable;Z)V
    .locals 6
    .parameter "activity"
    .parameter "onDelete"
    .parameter "isImage"

    .prologue
    .line 878
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_gallery_confirm_delete_key"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 881
    .local v1, needConfirm:Z
    if-nez v1, :cond_1

    .line 882
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 890
    :cond_0
    :goto_0
    return-void

    .line 884
    :cond_1
    const v3, 0x7f0700df

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 885
    .local v2, title:Ljava/lang/String;
    if-eqz p2, :cond_2

    const v3, 0x7f0700e0

    :goto_1
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 888
    .local v0, message:Ljava/lang/String;
    invoke-static {p0, v2, v0, p1}, Lcom/sec/android/app/camera/MenuHelper;->confirmAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 885
    .end local v0           #message:Ljava/lang/String;
    :cond_2
    const v3, 0x7f0700e1

    goto :goto_1
.end method

.method public static deleteMultiple(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 6
    .parameter "context"
    .parameter "action"

    .prologue
    .line 893
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_gallery_confirm_delete_key"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 896
    .local v1, needConfirm:Z
    if-nez v1, :cond_1

    .line 897
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 904
    :cond_0
    :goto_0
    return-void

    .line 899
    :cond_1
    const v3, 0x7f0700df

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 900
    .local v2, title:Ljava/lang/String;
    const v3, 0x7f0700e2

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 902
    .local v0, message:Ljava/lang/String;
    invoke-static {p0, v2, v0, p1}, Lcom/sec/android/app/camera/MenuHelper;->confirmAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static deletePhoto(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "activity"
    .parameter "onDelete"

    .prologue
    .line 864
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/camera/MenuHelper;->deleteImpl(Landroid/app/Activity;Ljava/lang/Runnable;Z)V

    .line 865
    return-void
.end method

.method static deleteVideo(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "activity"
    .parameter "onDelete"

    .prologue
    .line 868
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/camera/MenuHelper;->deleteImpl(Landroid/app/Activity;Ljava/lang/Runnable;Z)V

    .line 869
    return-void
.end method

.method public static enableShareMenuItem(Landroid/view/Menu;Z)V
    .locals 2
    .parameter "menu"
    .parameter "enabled"

    .prologue
    .line 167
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 168
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 169
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 170
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 172
    :cond_0
    return-void
.end method

.method public static enableShowOnMapMenuItem(Landroid/view/Menu;Z)V
    .locals 2
    .parameter "menu"
    .parameter "enabled"

    .prologue
    .line 182
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 183
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 186
    :cond_0
    return-void
.end method

.method public static formatDuration(Landroid/content/Context;I)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "durationMs"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 983
    div-int/lit16 v0, p1, 0x3e8

    .line 984
    .local v0, duration:I
    div-int/lit16 v2, v0, 0xe10

    .line 985
    .local v2, h:I
    mul-int/lit16 v5, v2, 0xe10

    sub-int v5, v0, v5

    div-int/lit8 v3, v5, 0x3c

    .line 986
    .local v3, m:I
    mul-int/lit16 v5, v2, 0xe10

    mul-int/lit8 v6, v3, 0x3c

    add-int/2addr v5, v6

    sub-int v4, v0, v5

    .line 988
    .local v4, s:I
    if-nez v2, :cond_0

    .line 989
    const v5, 0x7f0700e6

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 995
    .local v1, durationValue:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 992
    .end local v1           #durationValue:Ljava/lang/String;
    :cond_0
    const v5, 0x7f0700e7

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #durationValue:Ljava/lang/String;
    goto :goto_0
.end method

.method private static getExif(Lcom/sec/android/app/camera/gallery/IImage;)Landroid/media/ExifInterface;
    .locals 4
    .parameter "image"

    .prologue
    const/4 v3, 0x0

    .line 247
    const-string v1, "image/jpeg"

    invoke-interface {p0}, Lcom/sec/android/app/camera/gallery/IImage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v3

    .line 255
    :goto_0
    return-object v1

    .line 252
    :cond_0
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-interface {p0}, Lcom/sec/android/app/camera/gallery/IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 254
    .local v0, ex:Ljava/io/IOException;
    const-string v1, "MenuHelper"

    const-string v2, "cannot read exif"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v3

    .line 255
    goto :goto_0
.end method

.method public static getImageFileSize(Lcom/sec/android/app/camera/gallery/IImage;)J
    .locals 4
    .parameter "image"

    .prologue
    const-wide/16 v2, -0x1

    .line 129
    invoke-interface {p0}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageData()Ljava/io/InputStream;

    move-result-object v0

    .line 130
    .local v0, data:Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-wide v2

    .line 132
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    int-to-long v2, v2

    .line 136
    :goto_1
    invoke-static {v0}, Lcom/sec/android/app/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 133
    :catch_0
    move-exception v1

    .line 134
    .local v1, ex:Ljava/io/IOException;
    goto :goto_1

    .line 136
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-static {v0}, Lcom/sec/android/app/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    throw v2
.end method

.method private static getWhiteBalanceString(Landroid/media/ExifInterface;)Ljava/lang/String;
    .locals 4
    .parameter "exif"

    .prologue
    const/4 v2, -0x1

    const-string v3, ""

    .line 351
    const-string v1, "WhiteBalance"

    invoke-virtual {p0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 352
    .local v0, whitebalance:I
    if-ne v0, v2, :cond_0

    const-string v1, ""

    move-object v1, v3

    .line 360
    :goto_0
    return-object v1

    .line 354
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 360
    const-string v1, ""

    move-object v1, v3

    goto :goto_0

    .line 356
    :pswitch_0
    const-string v1, "Auto"

    goto :goto_0

    .line 358
    :pswitch_1
    const-string v1, "Manual"

    goto :goto_0

    .line 354
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static gotoCameraImageGallery(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 955
    const v0, 0x7f0700dd

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/MenuHelper;->gotoGallery(Landroid/app/Activity;II)V

    .line 957
    return-void
.end method

.method public static gotoCameraMode(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 950
    const-string v0, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/MenuHelper;->startCameraActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 952
    return-void
.end method

.method public static gotoCameraVideoGallery(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 960
    const v0, 0x7f0700de

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/MenuHelper;->gotoGallery(Landroid/app/Activity;II)V

    .line 962
    return-void
.end method

.method private static gotoGallery(Landroid/app/Activity;II)V
    .locals 6
    .parameter "activity"
    .parameter "windowTitleId"
    .parameter "mediaTypes"

    .prologue
    .line 966
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "bucketId"

    sget-object v5, Lcom/sec/android/app/camera/ImageManager;->CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 969
    .local v2, target:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 970
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x400

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 971
    const-string v3, "windowTitle"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 972
    const-string v3, "mediaTypes"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 975
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 979
    :goto_0
    return-void

    .line 976
    :catch_0
    move-exception v0

    .line 977
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "MenuHelper"

    const-string v4, "Could not start gallery activity"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static gotoVideoMode(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 946
    const-string v0, "android.media.action.VIDEO_CAMERA"

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/MenuHelper;->startCameraActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 947
    return-void
.end method

.method public static hasLatLngData(Lcom/sec/android/app/camera/gallery/IImage;)Z
    .locals 3
    .parameter "image"

    .prologue
    .line 175
    invoke-static {p0}, Lcom/sec/android/app/camera/MenuHelper;->getExif(Lcom/sec/android/app/camera/gallery/IImage;)Landroid/media/ExifInterface;

    move-result-object v0

    .line 176
    .local v0, exif:Landroid/media/ExifInterface;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 178
    :goto_0
    return v2

    .line 177
    :cond_0
    const/4 v2, 0x2

    new-array v1, v2, [F

    .line 178
    .local v1, latlng:[F
    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v2

    goto :goto_0
.end method

.method private static hideDetailsRow(Landroid/view/View;I)V
    .locals 2
    .parameter "d"
    .parameter "rowId"

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    return-void
.end method

.method private static hideExifInformation(Landroid/view/View;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 305
    const v0, 0x7f0a0079

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/MenuHelper;->hideDetailsRow(Landroid/view/View;I)V

    .line 306
    const v0, 0x7f0a007b

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/MenuHelper;->hideDetailsRow(Landroid/view/View;I)V

    .line 307
    const v0, 0x7f0a007d

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/MenuHelper;->hideDetailsRow(Landroid/view/View;I)V

    .line 308
    const v0, 0x7f0a007f

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/MenuHelper;->hideDetailsRow(Landroid/view/View;I)V

    .line 309
    const v0, 0x7f0a0081

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/MenuHelper;->hideDetailsRow(Landroid/view/View;I)V

    .line 310
    const v0, 0x7f0a0083

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/MenuHelper;->hideDetailsRow(Landroid/view/View;I)V

    .line 311
    const v0, 0x7f0a0085

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/MenuHelper;->hideDetailsRow(Landroid/view/View;I)V

    .line 312
    return-void
.end method

.method public static isWhiteListUri(Landroid/net/Uri;)Z
    .locals 6
    .parameter "uri"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 146
    if-nez p0, :cond_0

    move v3, v4

    .line 163
    .end local p0
    :goto_0
    return v3

    .line 148
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, scheme:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, authority:Ljava/lang/String;
    const-string v3, "content"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "media"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    .line 152
    goto :goto_0

    .line 155
    :cond_1
    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 156
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 158
    .local v1, p:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v5, :cond_2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    const-string v3, "sdcard"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v5

    .line 159
    goto :goto_0

    .end local v1           #p:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    move v3, v4

    .line 163
    goto :goto_0
.end method

.method private static onCropClicked(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;Landroid/app/Activity;)Z
    .locals 1
    .parameter "onInvoke"
    .parameter "activity"

    .prologue
    .line 590
    new-instance v0, Lcom/sec/android/app/camera/MenuHelper$4;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/MenuHelper$4;-><init>(Landroid/app/Activity;)V

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;->run(Lcom/sec/android/app/camera/MenuHelper$MenuCallback;)V

    .line 603
    const/4 v0, 0x1

    return v0
.end method

.method private static onDeleteClicked(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;Landroid/app/Activity;Ljava/lang/Runnable;)Z
    .locals 1
    .parameter "onInvoke"
    .parameter "activity"
    .parameter "onDelete"

    .prologue
    .line 669
    new-instance v0, Lcom/sec/android/app/camera/MenuHelper$8;

    invoke-direct {v0, p1, p2}, Lcom/sec/android/app/camera/MenuHelper$8;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;->run(Lcom/sec/android/app/camera/MenuHelper$MenuCallback;)V

    .line 675
    const/4 v0, 0x1

    return v0
.end method

.method private static onDetailsClicked(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;Landroid/os/Handler;Landroid/app/Activity;)Z
    .locals 1
    .parameter "onInvoke"
    .parameter "handler"
    .parameter "activity"

    .prologue
    .line 369
    new-instance v0, Lcom/sec/android/app/camera/MenuHelper$2;

    invoke-direct {v0, p2, p1}, Lcom/sec/android/app/camera/MenuHelper$2;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;->run(Lcom/sec/android/app/camera/MenuHelper$MenuCallback;)V

    .line 570
    const/4 v0, 0x1

    return v0
.end method

.method private static onImageShareClicked(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;Landroid/app/Activity;)Z
    .locals 1
    .parameter "onInvoke"
    .parameter "activity"

    .prologue
    .line 626
    new-instance v0, Lcom/sec/android/app/camera/MenuHelper$6;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/MenuHelper$6;-><init>(Landroid/app/Activity;)V

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;->run(Lcom/sec/android/app/camera/MenuHelper$MenuCallback;)V

    .line 649
    const/4 v0, 0x1

    return v0
.end method

.method private static onRotateClicked(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;I)Z
    .locals 1
    .parameter "onInvoke"
    .parameter "degree"

    .prologue
    .line 576
    new-instance v0, Lcom/sec/android/app/camera/MenuHelper$3;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/MenuHelper$3;-><init>(I)V

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;->run(Lcom/sec/android/app/camera/MenuHelper$MenuCallback;)V

    .line 584
    const/4 v0, 0x1

    return v0
.end method

.method private static onSetAsClicked(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;Landroid/app/Activity;)Z
    .locals 1
    .parameter "onInvoke"
    .parameter "activity"

    .prologue
    .line 609
    new-instance v0, Lcom/sec/android/app/camera/MenuHelper$5;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/MenuHelper$5;-><init>(Landroid/app/Activity;)V

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;->run(Lcom/sec/android/app/camera/MenuHelper$MenuCallback;)V

    .line 620
    const/4 v0, 0x1

    return v0
.end method

.method private static onShowMapClicked(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;Landroid/os/Handler;Landroid/app/Activity;)Z
    .locals 1
    .parameter "onInvoke"
    .parameter "handler"
    .parameter "activity"

    .prologue
    .line 263
    new-instance v0, Lcom/sec/android/app/camera/MenuHelper$1;

    invoke-direct {v0, p1, p2}, Lcom/sec/android/app/camera/MenuHelper$1;-><init>(Landroid/os/Handler;Landroid/app/Activity;)V

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;->run(Lcom/sec/android/app/camera/MenuHelper$MenuCallback;)V

    .line 301
    const/4 v0, 0x1

    return v0
.end method

.method private static onViewPlayClicked(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;Landroid/app/Activity;)Z
    .locals 1
    .parameter "onInvoke"
    .parameter "activity"

    .prologue
    .line 655
    new-instance v0, Lcom/sec/android/app/camera/MenuHelper$7;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/MenuHelper$7;-><init>(Landroid/app/Activity;)V

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;->run(Lcom/sec/android/app/camera/MenuHelper$MenuCallback;)V

    .line 663
    const/4 v0, 0x1

    return v0
.end method

.method private static setDetailsValue(Landroid/view/View;Ljava/lang/String;I)V
    .locals 0
    .parameter "d"
    .parameter "text"
    .parameter "valueId"

    .prologue
    .line 189
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    return-void
.end method

.method private static setLatLngDetails(Landroid/view/View;Landroid/app/Activity;Landroid/media/ExifInterface;)V
    .locals 10
    .parameter "d"
    .parameter "context"
    .parameter "exif"

    .prologue
    const v9, 0x7f0a0083

    const v8, 0x7f0a0081

    const/4 v7, 0x1

    const/high16 v6, 0x437f

    const/4 v5, 0x0

    .line 221
    const/4 v3, 0x2

    new-array v2, v3, [F

    .line 222
    .local v2, latlng:[F
    invoke-virtual {p2, v2}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 223
    aget v3, v2, v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0a0082

    invoke-static {p0, v3, v4}, Lcom/sec/android/app/camera/MenuHelper;->setDetailsValue(Landroid/view/View;Ljava/lang/String;I)V

    .line 225
    aget v3, v2, v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0a0084

    invoke-static {p0, v3, v4}, Lcom/sec/android/app/camera/MenuHelper;->setDetailsValue(Landroid/view/View;Ljava/lang/String;I)V

    .line 228
    aget v3, v2, v5

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_0

    aget v3, v2, v7

    cmpl-float v3, v3, v6

    if-nez v3, :cond_1

    .line 229
    :cond_0
    invoke-static {p0, v8}, Lcom/sec/android/app/camera/MenuHelper;->hideDetailsRow(Landroid/view/View;I)V

    .line 230
    invoke-static {p0, v9}, Lcom/sec/android/app/camera/MenuHelper;->hideDetailsRow(Landroid/view/View;I)V

    .line 231
    const v3, 0x7f0a0085

    invoke-static {p0, v3}, Lcom/sec/android/app/camera/MenuHelper;->hideDetailsRow(Landroid/view/View;I)V

    .line 244
    :goto_0
    return-void

    .line 235
    :cond_1
    new-instance v0, Lcom/sec/android/app/camera/MenuHelper$UpdateLocationCallback;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v3}, Lcom/sec/android/app/camera/MenuHelper$UpdateLocationCallback;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 237
    .local v0, cb:Lcom/sec/android/app/camera/MenuHelper$UpdateLocationCallback;
    new-instance v1, Landroid/location/Geocoder;

    invoke-direct {v1, p1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 238
    .local v1, geocoder:Landroid/location/Geocoder;
    new-instance v3, Lcom/sec/android/app/camera/ReverseGeocoderTask;

    invoke-direct {v3, v1, v2, v0}, Lcom/sec/android/app/camera/ReverseGeocoderTask;-><init>(Landroid/location/Geocoder;[FLcom/sec/android/app/camera/ReverseGeocoderTask$Callback;)V

    new-array v4, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/ReverseGeocoderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 240
    .end local v0           #cb:Lcom/sec/android/app/camera/MenuHelper$UpdateLocationCallback;
    .end local v1           #geocoder:Landroid/location/Geocoder;
    :cond_2
    invoke-static {p0, v8}, Lcom/sec/android/app/camera/MenuHelper;->hideDetailsRow(Landroid/view/View;I)V

    .line 241
    invoke-static {p0, v9}, Lcom/sec/android/app/camera/MenuHelper;->hideDetailsRow(Landroid/view/View;I)V

    .line 242
    const v3, 0x7f0a0085

    invoke-static {p0, v3}, Lcom/sec/android/app/camera/MenuHelper;->hideDetailsRow(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private static showExifInformation(Lcom/sec/android/app/camera/gallery/IImage;Landroid/view/View;Landroid/app/Activity;)V
    .locals 3
    .parameter "image"
    .parameter "d"
    .parameter "activity"

    .prologue
    .line 316
    invoke-static {p0}, Lcom/sec/android/app/camera/MenuHelper;->getExif(Lcom/sec/android/app/camera/gallery/IImage;)Landroid/media/ExifInterface;

    move-result-object v0

    .line 317
    .local v0, exif:Landroid/media/ExifInterface;
    if-nez v0, :cond_0

    .line 318
    invoke-static {p1}, Lcom/sec/android/app/camera/MenuHelper;->hideExifInformation(Landroid/view/View;)V

    .line 344
    :goto_0
    return-void

    .line 322
    :cond_0
    const-string v2, "Make"

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 324
    const v2, 0x7f0a007c

    invoke-static {p1, v1, v2}, Lcom/sec/android/app/camera/MenuHelper;->setDetailsValue(Landroid/view/View;Ljava/lang/String;I)V

    .line 329
    :goto_1
    const-string v2, "Model"

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 330
    if-eqz v1, :cond_2

    .line 331
    const v2, 0x7f0a007e

    invoke-static {p1, v1, v2}, Lcom/sec/android/app/camera/MenuHelper;->setDetailsValue(Landroid/view/View;Ljava/lang/String;I)V

    .line 336
    :goto_2
    invoke-static {v0}, Lcom/sec/android/app/camera/MenuHelper;->getWhiteBalanceString(Landroid/media/ExifInterface;)Ljava/lang/String;

    move-result-object v1

    .line 337
    if-eqz v1, :cond_3

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 338
    const v2, 0x7f0a0080

    invoke-static {p1, v1, v2}, Lcom/sec/android/app/camera/MenuHelper;->setDetailsValue(Landroid/view/View;Ljava/lang/String;I)V

    .line 343
    :goto_3
    invoke-static {p1, p2, v0}, Lcom/sec/android/app/camera/MenuHelper;->setLatLngDetails(Landroid/view/View;Landroid/app/Activity;Landroid/media/ExifInterface;)V

    goto :goto_0

    .line 326
    :cond_1
    const v2, 0x7f0a007b

    invoke-static {p1, v2}, Lcom/sec/android/app/camera/MenuHelper;->hideDetailsRow(Landroid/view/View;I)V

    goto :goto_1

    .line 333
    :cond_2
    const v2, 0x7f0a007d

    invoke-static {p1, v2}, Lcom/sec/android/app/camera/MenuHelper;->hideDetailsRow(Landroid/view/View;I)V

    goto :goto_2

    .line 340
    :cond_3
    const v2, 0x7f0a007f

    invoke-static {p1, v2}, Lcom/sec/android/app/camera/MenuHelper;->hideDetailsRow(Landroid/view/View;I)V

    goto :goto_3
.end method

.method public static showStorageToast(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 999
    invoke-static {}, Lcom/sec/android/app/camera/MenuHelper;->calculatePicturesRemaining()I

    move-result v0

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/MenuHelper;->showStorageToast(Landroid/app/Activity;I)V

    .line 1000
    return-void
.end method

.method public static showStorageToast(Landroid/app/Activity;I)V
    .locals 3
    .parameter "activity"
    .parameter "remaining"

    .prologue
    .line 1003
    const/4 v0, 0x0

    .line 1005
    .local v0, noStorageText:Ljava/lang/String;
    const/4 v2, -0x1

    if-ne p1, v2, :cond_3

    .line 1006
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 1007
    .local v1, state:Ljava/lang/String;
    const-string v2, "checking"

    if-ne v1, v2, :cond_2

    .line 1008
    const v2, 0x7f07000a

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1016
    .end local v1           #state:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1017
    const/16 v2, 0x1388

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1019
    :cond_1
    return-void

    .line 1010
    .restart local v1       #state:Ljava/lang/String;
    :cond_2
    const v2, 0x7f070006

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1012
    .end local v1           #state:Ljava/lang/String;
    :cond_3
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 1013
    const v2, 0x7f070007

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static startCameraActivity(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .parameter "activity"
    .parameter "action"

    .prologue
    .line 934
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 935
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 936
    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 940
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraHolder;->keep()V

    .line 942
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 943
    return-void
.end method
