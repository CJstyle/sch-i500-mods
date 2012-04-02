.class public Lcom/sec/android/app/cradle/CradleWallpaperChooser;
.super Landroid/app/Activity;
.source "CradleWallpaperChooser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/cradle/CradleWallpaperChooser$WallpaperLoader;,
        Lcom/sec/android/app/cradle/CradleWallpaperChooser$ImageAdapter;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCustomer:Lcom/sec/android/app/cradle/LauncherCustomer;

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

.field private mLoader:Lcom/sec/android/app/cradle/CradleWallpaperChooser$WallpaperLoader;

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

.field private mTwWallPaperResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mTwWallPaperResources:Landroid/content/res/Resources;

    .line 245
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/cradle/CradleWallpaperChooser;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mThumbs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/cradle/CradleWallpaperChooser;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mTwWallPaperResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/cradle/CradleWallpaperChooser;)Lcom/sec/android/app/cradle/LauncherCustomer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mCustomer:Lcom/sec/android/app/cradle/LauncherCustomer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/cradle/CradleWallpaperChooser;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/cradle/CradleWallpaperChooser;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/cradle/CradleWallpaperChooser;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/cradle/CradleWallpaperChooser;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/cradle/CradleWallpaperChooser;Lcom/sec/android/app/cradle/CradleWallpaperChooser$WallpaperLoader;)Lcom/sec/android/app/cradle/CradleWallpaperChooser$WallpaperLoader;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mLoader:Lcom/sec/android/app/cradle/CradleWallpaperChooser$WallpaperLoader;

    return-object p1
.end method

.method private addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V
    .locals 10
    .parameter "resources"
    .parameter "packageName"
    .parameter "list"

    .prologue
    const-string v9, "drawable"

    .line 124
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 126
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

    .line 127
    .local v1, extra:Ljava/lang/String;
    const-string v7, "drawable"

    const-string v7, "com.sec.android.app.twwallpaperchooser"

    invoke-virtual {p1, v1, v9, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 129
    .local v5, res:I
    if-eqz v5, :cond_0

    .line 130
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

    .line 133
    .local v6, thumbRes:I
    if-eqz v6, :cond_0

    .line 134
    iget-object v7, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mThumbs:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v7, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mImages:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .end local v6           #thumbRes:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 140
    .end local v1           #extra:Ljava/lang/String;
    .end local v5           #res:I
    :cond_1
    return-void
.end method

.method private findWallpapers()V
    .locals 8

    .prologue
    const/16 v4, 0x18

    const-string v7, "com.sec.android.app.twwallpaperchooser"

    const-string v6, "array"

    .line 95
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mThumbs:Ljava/util/ArrayList;

    .line 96
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mImages:Ljava/util/ArrayList;

    .line 98
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mTwWallPaperResources:Landroid/content/res/Resources;

    if-nez v3, :cond_0

    .line 99
    const-string v3, "CradleTwWallpaperChooser"

    const-string v4, "mTwWallPaperResources is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_0
    return-void

    .line 111
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sec/android/app/cradle/LauncherCustomer;->getInstance(Ljava/lang/String;I)Lcom/sec/android/app/cradle/LauncherCustomer;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mCustomer:Lcom/sec/android/app/cradle/LauncherCustomer;

    .line 112
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mCustomer:Lcom/sec/android/app/cradle/LauncherCustomer;

    iget-object v4, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mImages:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mThumbs:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/cradle/LauncherCustomer;->addCustomerWallpaper(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 114
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mTwWallPaperResources:Landroid/content/res/Resources;

    const-string v4, "wallpapers"

    const-string v5, "array"

    const-string v5, "com.sec.android.app.twwallpaperchooser"

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 115
    .local v2, wallpapersId:I
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mTwWallPaperResources:Landroid/content/res/Resources;

    const-string v4, "extra_wallpapers"

    const-string v5, "array"

    const-string v5, "com.sec.android.app.twwallpaperchooser"

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 117
    .local v0, extraWallpapersId:I
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mTwWallPaperResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, packageName:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mTwWallPaperResources:Landroid/content/res/Resources;

    invoke-direct {p0, v3, v1, v2}, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V

    .line 120
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mTwWallPaperResources:Landroid/content/res/Resources;

    invoke-direct {p0, v3, v1, v0}, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private selectWallpaper(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 171
    iget-boolean v2, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mIsWallpaperSet:Z

    if-eqz v2, :cond_0

    .line 193
    :goto_0
    return-void

    .line 175
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mIsWallpaperSet:Z

    .line 177
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 178
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 179
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v3, "cradle_wallpaper_resource_id"

    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 180
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 181
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->setResult(I)V

    .line 182
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v0}, Landroid/widget/Gallery;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->selectWallpaper(I)V

    .line 243
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->requestWindowFeature(I)Z

    .line 73
    :try_start_0
    const-string v2, "com.sec.android.app.twwallpaperchooser"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 74
    .local v1, wallPaperContext:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mTwWallPaperResources:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v1           #wallPaperContext:Landroid/content/Context;
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->findWallpapers()V

    .line 82
    const v2, 0x7f030007

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->setContentView(I)V

    .line 84
    const v2, 0x7f0a0052

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Gallery;

    iput-object v2, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mGallery:Landroid/widget/Gallery;

    .line 85
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mGallery:Landroid/widget/Gallery;

    new-instance v3, Lcom/sec/android/app/cradle/CradleWallpaperChooser$ImageAdapter;

    invoke-direct {v3, p0, p0}, Lcom/sec/android/app/cradle/CradleWallpaperChooser$ImageAdapter;-><init>(Lcom/sec/android/app/cradle/CradleWallpaperChooser;Lcom/sec/android/app/cradle/CradleWallpaperChooser;)V

    invoke-virtual {v2, v3}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 86
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v2, p0}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 87
    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v2, v4}, Landroid/widget/Gallery;->setCallbackDuringFling(Z)V

    .line 89
    const v2, 0x7f0a0053

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v2, 0x7f0a0051

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mImageView:Landroid/widget/ImageView;

    .line 92
    return-void

    .line 75
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 76
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 77
    const-string v2, "CradleTwWallpaperChooser"

    const-string v3, "Fail to Get twwallpaperResources"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 150
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mLoader:Lcom/sec/android/app/cradle/CradleWallpaperChooser$WallpaperLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mLoader:Lcom/sec/android/app/cradle/CradleWallpaperChooser$WallpaperLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/CradleWallpaperChooser$WallpaperLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mLoader:Lcom/sec/android/app/cradle/CradleWallpaperChooser$WallpaperLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/cradle/CradleWallpaperChooser$WallpaperLoader;->cancel(Z)Z

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mLoader:Lcom/sec/android/app/cradle/CradleWallpaperChooser$WallpaperLoader;

    .line 156
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
    .line 159
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mLoader:Lcom/sec/android/app/cradle/CradleWallpaperChooser$WallpaperLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mLoader:Lcom/sec/android/app/cradle/CradleWallpaperChooser$WallpaperLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/CradleWallpaperChooser$WallpaperLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mLoader:Lcom/sec/android/app/cradle/CradleWallpaperChooser$WallpaperLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/CradleWallpaperChooser$WallpaperLoader;->cancel()V

    .line 162
    :cond_0
    new-instance v0, Lcom/sec/android/app/cradle/CradleWallpaperChooser$WallpaperLoader;

    invoke-direct {v0, p0}, Lcom/sec/android/app/cradle/CradleWallpaperChooser$WallpaperLoader;-><init>(Lcom/sec/android/app/cradle/CradleWallpaperChooser;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/cradle/CradleWallpaperChooser$WallpaperLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/cradle/CradleWallpaperChooser$WallpaperLoader;

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mLoader:Lcom/sec/android/app/cradle/CradleWallpaperChooser$WallpaperLoader;

    .line 163
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 196
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mIsWallpaperSet:Z

    .line 146
    return-void
.end method
