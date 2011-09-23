.class Lcom/sec/android/app/twlauncher/LauncherApplication$1;
.super Landroid/database/ContentObserver;
.source "LauncherApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/LauncherApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/LauncherApplication;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/LauncherApplication;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherApplication$1;->this$0:Lcom/sec/android/app/twlauncher/LauncherApplication;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherApplication$1;->this$0:Lcom/sec/android/app/twlauncher/LauncherApplication;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherApplication;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherApplication$1;->this$0:Lcom/sec/android/app/twlauncher/LauncherApplication;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 83
    return-void
.end method
