.class Lcom/android/browser/BrowserActivity$SetAsWallpaper;
.super Ljava/lang/Thread;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetAsWallpaper"
.end annotation


# instance fields
.field private mCanceled:Z

.field private mUrl:Ljava/net/URL;

.field private mWallpaperProgress:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/android/browser/BrowserActivity;


# direct methods
.method public constructor <init>(Lcom/android/browser/BrowserActivity;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "url"

    .prologue
    .line 2552
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2550
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mCanceled:Z

    .line 2554
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mUrl:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2558
    :goto_0
    return-void

    .line 2555
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2556
    .local v0, e:Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mUrl:Ljava/net/URL;

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 2561
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mCanceled:Z

    .line 2562
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 2565
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mUrl:Ljava/net/URL;

    if-eqz v0, :cond_0

    .line 2569
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mWallpaperProgress:Landroid/app/ProgressDialog;

    .line 2570
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 2571
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mWallpaperProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->this$0:Lcom/android/browser/BrowserActivity;

    const v2, 0x7f090106

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2572
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 2573
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2574
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 2575
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->start()V

    .line 2577
    :cond_0
    return v3
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const-string v9, "browser"

    .line 2581
    iget-object v7, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v7}, Lcom/android/browser/BrowserActivity;->getWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 2588
    .local v5, oldWallpaper:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v7, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mUrl:Ljava/net/URL;

    invoke-virtual {v7}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    .line 2589
    .local v4, inputstream:Ljava/io/InputStream;
    if-eqz v4, :cond_0

    .line 2590
    iget-object v7, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v7, v4}, Lcom/android/browser/BrowserActivity;->setWallpaper(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2599
    .end local v4           #inputstream:Ljava/io/InputStream;
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mCanceled:Z

    if-eqz v7, :cond_1

    .line 2602
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 2603
    .local v6, width:I
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 2604
    .local v3, height:I
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2605
    .local v0, bm:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2606
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v5, v8, v8, v6, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2607
    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2609
    :try_start_1
    iget-object v7, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v7, v0}, Lcom/android/browser/BrowserActivity;->setWallpaper(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2613
    :goto_1
    iput-boolean v8, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mCanceled:Z

    .line 2616
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v3           #height:I
    .end local v6           #width:I
    :cond_1
    iget-object v7, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2617
    iget-object v7, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2619
    :cond_2
    return-void

    .line 2592
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 2593
    .local v2, e:Ljava/io/IOException;
    const-string v7, "browser"

    const-string v7, "Unable to set new wallpaper"

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mCanceled:Z

    goto :goto_0

    .line 2610
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v1       #canvas:Landroid/graphics/Canvas;
    .restart local v3       #height:I
    .restart local v6       #width:I
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 2611
    .restart local v2       #e:Ljava/io/IOException;
    const-string v7, "browser"

    const-string v7, "Unable to restore old wallpaper."

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
