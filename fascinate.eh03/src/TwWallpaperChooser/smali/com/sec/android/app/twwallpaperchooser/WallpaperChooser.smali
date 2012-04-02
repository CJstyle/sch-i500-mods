.class public Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;
.super Landroid/app/Activity;
.source "WallpaperChooser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;,
        Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$ImageAdapter;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCustomer:Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;

.field private mGallery:Landroid/widget/Gallery;

.field private mImageView:Landroid/widget/ImageView;

.field private mImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsWallpaperSet:Z

.field private mLoader:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

.field private mThumbs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 208
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mThumbs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;)Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mCustomer:Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;)Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mLoader:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    return-object p1
.end method

.method private addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V
    .locals 10
    .parameter "resources"
    .parameter "packageName"
    .parameter "list"

    .prologue
    const-string v9, "drawable"

    .line 97
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, extras:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 99
    .local v1, extra:Ljava/lang/String;
    const-string v7, "drawable"

    invoke-virtual {p1, v1, v9, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 100
    .local v5, res:I
    if-eqz v5, :cond_0

    .line 101
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_small"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "drawable"

    invoke-virtual {p1, v7, v9, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 104
    .local v6, thumbRes:I
    if-eqz v6, :cond_0

    .line 105
    iget-object v7, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mThumbs:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v7, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mImages:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .end local v6           #thumbRes:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    .end local v1           #extra:Ljava/lang/String;
    .end local v5           #res:I
    :cond_1
    return-void
.end method

.method private findWallpapers()V
    .locals 6

    .prologue
    const v5, 0x7f040001

    const/16 v3, 0x18

    .line 79
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mThumbs:Ljava/util/ArrayList;

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mImages:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {p0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 87
    .local v1, resources:Landroid/content/res/Resources;
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, packageName:Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->getInstance(Ljava/lang/String;I)Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mCustomer:Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;

    .line 90
    iget-object v2, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mCustomer:Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;

    iget-object v3, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mImages:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mThumbs:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->addCustomerWallpaper(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 92
    invoke-direct {p0, v1, v0, v5}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V

    .line 93
    const/high16 v2, 0x7f04

    invoke-direct {p0, v1, v0, v2}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V

    .line 94
    return-void
.end method

.method private selectWallpaper(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 142
    iget-boolean v2, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mIsWallpaperSet:Z

    if-eqz v2, :cond_0

    .line 156
    :goto_0
    return-void

    .line 146
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mIsWallpaperSet:Z

    .line 148
    :try_start_0
    const-string v2, "wallpaper"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperManager;

    .line 150
    .local v1, wpm:Landroid/app/WallpaperManager;
    iget-object v3, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mCustomer:Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;

    iget-object v2, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v1, v2, p1}, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->setCustomerWallpaper(Landroid/app/WallpaperManager;II)V

    .line 151
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->setResult(I)V

    .line 152
    invoke-virtual {p0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    .end local v1           #wpm:Landroid/app/WallpaperManager;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 154
    .local v0, e:Ljava/io/IOException;
    const-string v2, "TwWallpaperChooser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set wallpaper: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v0}, Landroid/widget/Gallery;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->selectWallpaper(I)V

    .line 206
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->requestWindowFeature(I)Z

    .line 64
    invoke-direct {p0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->findWallpapers()V

    .line 66
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->setContentView(I)V

    .line 68
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    iput-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mGallery:Landroid/widget/Gallery;

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mGallery:Landroid/widget/Gallery;

    new-instance v1, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$ImageAdapter;

    invoke-direct {v1, p0, p0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$ImageAdapter;-><init>(Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mGallery:Landroid/widget/Gallery;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setCallbackDuringFling(Z)V

    .line 73
    const v0, 0x7f060002

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const/high16 v0, 0x7f06

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mImageView:Landroid/widget/ImageView;

    .line 76
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mLoader:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mLoader:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mLoader:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;->cancel(Z)Z

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mLoader:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    .line 127
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mLoader:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mLoader:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mLoader:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;->cancel()V

    .line 133
    :cond_0
    new-instance v0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;-><init>(Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    iput-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mLoader:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    .line 134
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 159
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mIsWallpaperSet:Z

    .line 117
    return-void
.end method
