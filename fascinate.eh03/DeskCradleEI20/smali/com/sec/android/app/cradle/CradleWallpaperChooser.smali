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

.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

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
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mTwWallPaperResources:Landroid/content/res/Resources;

    .line 103
    new-instance v0, Lcom/sec/android/app/cradle/CradleWallpaperChooser$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/cradle/CradleWallpaperChooser$1;-><init>(Lcom/sec/android/app/cradle/CradleWallpaperChooser;)V

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 271
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/cradle/CradleWallpaperChooser;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mThumbs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/cradle/CradleWallpaperChooser;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mTwWallPaperResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/cradle/CradleWallpaperChooser;)Lcom/sec/android/app/cradle/LauncherCustomer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mCustomer:Lcom/sec/android/app/cradle/LauncherCustomer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/cradle/CradleWallpaperChooser;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/cradle/CradleWallpaperChooser;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/cradle/CradleWallpaperChooser;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/cradle/CradleWallpaperChooser;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/cradle/CradleWallpaperChooser;Lcom/sec/android/app/cradle/CradleWallpaperChooser$WallpaperLoader;)Lcom/sec/android/app/cradle/CradleWallpaperChooser$WallpaperLoader;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
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

    .line 146
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 148
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

    .line 149
    .local v1, extra:Ljava/lang/String;
    const-string v7, "drawable"

    const-string v7, "com.sec.android.app.twwallpaperchooser"

    invoke-virtual {p1, v1, v9, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 151
    .local v5, res:I
    if-eqz v5, :cond_0

    .line 152
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

    .line 155
    .local v6, thumbRes:I
    if-eqz v6, :cond_0

    .line 156
    iget-object v7, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mThumbs:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v7, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mImages:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .end local v6           #thumbRes:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 162
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

    .line 117
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mThumbs:Ljava/util/ArrayList;

    .line 118
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mImages:Ljava/util/ArrayList;

    .line 120
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mTwWallPaperResources:Landroid/content/res/Resources;

    if-nez v3, :cond_0

    .line 121
    const-string v3, "CradleTwWallpaperChooser"

    const-string v4, "mTwWallPaperResources is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    return-void

    .line 133
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sec/android/app/cradle/LauncherCustomer;->getInstance(Ljava/lang/String;I)Lcom/sec/android/app/cradle/LauncherCustomer;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mCustomer:Lcom/sec/android/app/cradle/LauncherCustomer;

    .line 134
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mCustomer:Lcom/sec/android/app/cradle/LauncherCustomer;

    iget-object v4, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mImages:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mThumbs:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/cradle/LauncherCustomer;->addCustomerWallpaper(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 136
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mTwWallPaperResources:Landroid/content/res/Resources;

    const-string v4, "wallpapers"

    const-string v5, "array"

    const-string v5, "com.sec.android.app.twwallpaperchooser"

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 137
    .local v2, wallpapersId:I
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mTwWallPaperResources:Landroid/content/res/Resources;

    const-string v4, "extra_wallpapers"

    const-string v5, "array"

    const-string v5, "com.sec.android.app.twwallpaperchooser"

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 139
    .local v0, extraWallpapersId:I
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mTwWallPaperResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, packageName:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mTwWallPaperResources:Landroid/content/res/Resources;

    invoke-direct {p0, v3, v1, v2}, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V

    .line 142
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mTwWallPaperResources:Landroid/content/res/Resources;

    invoke-direct {p0, v3, v1, v0}, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private selectWallpaper(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 197
    iget-boolean v2, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mIsWallpaperSet:Z

    if-eqz v2, :cond_0

    .line 219
    :goto_0
    return-void

    .line 201
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mIsWallpaperSet:Z

    .line 203
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 204
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 205
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v3, "cradle_wallpaper_resource_id"

    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 206
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 207
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->setResult(I)V

    .line 208
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v0}, Landroid/widget/Gallery;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->selectWallpaper(I)V

    .line 269
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->requestWindowFeature(I)Z

    .line 77
    :try_start_0
    const-string v3, "com.sec.android.app.twwallpaperchooser"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 78
    .local v2, wallPaperContext:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mTwWallPaperResources:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v2           #wallPaperContext:Landroid/content/Context;
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->findWallpapers()V

    .line 86
    const v3, 0x7f030007

    invoke-virtual {p0, v3}, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->setContentView(I)V

    .line 88
    const v3, 0x7f0a004e

    invoke-virtual {p0, v3}, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Gallery;

    iput-object v3, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mGallery:Landroid/widget/Gallery;

    .line 89
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mGallery:Landroid/widget/Gallery;

    new-instance v4, Lcom/sec/android/app/cradle/CradleWallpaperChooser$ImageAdapter;

    invoke-direct {v4, p0, p0}, Lcom/sec/android/app/cradle/CradleWallpaperChooser$ImageAdapter;-><init>(Lcom/sec/android/app/cradle/CradleWallpaperChooser;Lcom/sec/android/app/cradle/CradleWallpaperChooser;)V

    invoke-virtual {v3, v4}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 90
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v3, p0}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 91
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v3, v5}, Landroid/widget/Gallery;->setCallbackDuringFling(Z)V

    .line 93
    const v3, 0x7f0a004f

    invoke-virtual {p0, v3}, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v3, 0x7f0a004d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mImageView:Landroid/widget/ImageView;

    .line 97
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    .local v1, filter:Landroid/content/IntentFilter;
    sget-object v3, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    iget-object v3, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    return-void

    .line 79
    .end local v1           #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 80
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 81
    const-string v3, "CradleTwWallpaperChooser"

    const-string v4, "Fail to Get twwallpaperResources"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mLoader:Lcom/sec/android/app/cradle/CradleWallpaperChooser$WallpaperLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mLoader:Lcom/sec/android/app/cradle/CradleWallpaperChooser$WallpaperLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/CradleWallpaperChooser$WallpaperLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mLoader:Lcom/sec/android/app/cradle/CradleWallpaperChooser$WallpaperLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/cradle/CradleWallpaperChooser$WallpaperLoader;->cancel(Z)Z

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mLoader:Lcom/sec/android/app/cradle/CradleWallpaperChooser$WallpaperLoader;

    .line 182
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
    .line 185
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mLoader:Lcom/sec/android/app/cradle/CradleWallpaperChooser$WallpaperLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mLoader:Lcom/sec/android/app/cradle/CradleWallpaperChooser$WallpaperLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/CradleWallpaperChooser$WallpaperLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mLoader:Lcom/sec/android/app/cradle/CradleWallpaperChooser$WallpaperLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/CradleWallpaperChooser$WallpaperLoader;->cancel()V

    .line 188
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

    .line 189
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 222
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/cradle/CradleWallpaperChooser;->mIsWallpaperSet:Z

    .line 168
    return-void
.end method
