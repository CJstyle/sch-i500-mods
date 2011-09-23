.class Lcom/sec/android/app/controlpanel/activity/JobManagerActivity$1;
.super Ljava/lang/Object;
.source "JobManagerActivity.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwTabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity$1;->this$0:Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "tabId"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/JobManagerActivity$1;->this$0:Lcom/sec/android/app/controlpanel/activity/JobManagerActivity;

    const-string v1, "activetabString"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/controlpanel/Utils;->setStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method
