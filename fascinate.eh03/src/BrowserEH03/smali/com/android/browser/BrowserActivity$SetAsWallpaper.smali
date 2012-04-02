.class Lcom/android/browser/BrowserActivity$SetAsWallpaper;
.super Ljava/lang/Thread;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


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
    .line 2968
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2966
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mCanceled:Z

    .line 2970
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mUrl:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2974
    :goto_0
    return-void

    .line 2971
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2972
    .local v0, e:Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mUrl:Ljava/net/URL;

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 2978
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 2981
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mUrl:Ljava/net/URL;

    if-eqz v0, :cond_0

    .line 2985
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mWallpaperProgress:Landroid/app/ProgressDialog;

    .line 2986
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 2987
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mWallpaperProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->this$0:Lcom/android/browser/BrowserActivity;

    const v2, 0x7f090107

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2988
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 2989
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2990
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 2991
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->start()V

    .line 2993
    :cond_0
    return v3
.end method

.method public run()V
    .locals 13

    .prologue
    .line 2998
    iget-object v10, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->this$0:Lcom/android/browser/BrowserActivity;

    const-string v11, "wallpaper"

    invoke-virtual {v10, v11}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/WallpaperManager;

    .line 2999
    .local v9, wpm:Landroid/app/WallpaperManager;
    invoke-virtual {v9}, Landroid/app/WallpaperManager;->getFastDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 3006
    .local v8, oldWallpaper:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v10, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mUrl:Ljava/net/URL;

    invoke-virtual {v10}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v7

    .line 3007
    .local v7, inputstream:Ljava/io/InputStream;
    if-eqz v7, :cond_0

    .line 3008
    iget-object v10, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mUrl:Ljava/net/URL;

    invoke-virtual {v10}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".gif"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    .line 3009
    invoke-virtual {v9, v7}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3061
    .end local v7           #inputstream:Ljava/io/InputStream;
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v10}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3062
    iget-object v10, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v10}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3064
    :cond_1
    return-void

    .line 3012
    .restart local v7       #inputstream:Ljava/io/InputStream;
    :cond_2
    :try_start_1
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 3014
    .local v0, bm:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 3015
    .local v2, fOut:Ljava/io/OutputStream;
    :try_start_2
    const-string v10, "temp_wallpaper"

    const-string v11, ".jpg"

    iget-object v12, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v12}, Lcom/android/browser/BrowserActivity;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-static {v10, v11, v12}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 3016
    .local v4, file:Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3018
    .end local v2           #fOut:Ljava/io/OutputStream;
    .local v3, fOut:Ljava/io/OutputStream;
    :try_start_3
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v0, v10, v11, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3019
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 3020
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 3021
    const/4 v5, 0x0

    .line 3023
    .local v5, in:Ljava/io/InputStream;
    :try_start_4
    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3024
    .end local v5           #in:Ljava/io/InputStream;
    .local v6, in:Ljava/io/InputStream;
    :try_start_5
    invoke-virtual {v9, v6}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3026
    if-eqz v6, :cond_3

    .line 3027
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 3029
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 3031
    .end local v6           #in:Ljava/io/InputStream;
    :catch_0
    move-exception v10

    move-object v1, v10

    move-object v2, v3

    .line 3032
    .end local v3           #fOut:Ljava/io/OutputStream;
    .end local v4           #file:Ljava/io/File;
    .local v1, e:Ljava/lang/Exception;
    .restart local v2       #fOut:Ljava/io/OutputStream;
    :goto_1
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    .line 3037
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #fOut:Ljava/io/OutputStream;
    .end local v7           #inputstream:Ljava/io/InputStream;
    :catch_1
    move-exception v10

    move-object v1, v10

    .line 3038
    .local v1, e:Ljava/io/IOException;
    const-string v10, "browser"

    const-string v11, "Unable to set new wallpaper"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3041
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mCanceled:Z

    goto :goto_0

    .line 3026
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v3       #fOut:Ljava/io/OutputStream;
    .restart local v4       #file:Ljava/io/File;
    .restart local v5       #in:Ljava/io/InputStream;
    .restart local v7       #inputstream:Ljava/io/InputStream;
    :catchall_0
    move-exception v10

    :goto_2
    if-eqz v5, :cond_4

    .line 3027
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 3029
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    throw v10
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 3031
    .end local v3           #fOut:Ljava/io/OutputStream;
    .end local v4           #file:Ljava/io/File;
    .end local v5           #in:Ljava/io/InputStream;
    .restart local v2       #fOut:Ljava/io/OutputStream;
    :catch_2
    move-exception v10

    move-object v1, v10

    goto :goto_1

    .line 3026
    .end local v2           #fOut:Ljava/io/OutputStream;
    .restart local v3       #fOut:Ljava/io/OutputStream;
    .restart local v4       #file:Ljava/io/File;
    .restart local v6       #in:Ljava/io/InputStream;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    goto :goto_2
.end method
