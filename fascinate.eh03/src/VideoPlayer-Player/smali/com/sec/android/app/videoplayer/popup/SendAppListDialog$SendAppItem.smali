.class Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$SendAppItem;
.super Ljava/lang/Object;
.source "SendAppListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendAppItem"
.end annotation


# instance fields
.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mAppName:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "appicon"
    .parameter "appname"

    .prologue
    .line 357
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$SendAppItem;->this$0:Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iput-object p2, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$SendAppItem;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 359
    iput-object p3, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$SendAppItem;->mAppName:Ljava/lang/String;

    .line 360
    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$SendAppItem;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$SendAppItem;->mAppName:Ljava/lang/String;

    return-object v0
.end method
