.class Lcom/android/settings/dataroaming/DataRoamingSettingActivity$1;
.super Ljava/lang/Object;
.source "DataRoamingSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dataroaming/DataRoamingSettingActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/dataroaming/DataRoamingSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings/dataroaming/DataRoamingSettingActivity$1;->this$0:Lcom/android/settings/dataroaming/DataRoamingSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/dataroaming/DataRoamingSettingActivity$1;->this$0:Lcom/android/settings/dataroaming/DataRoamingSettingActivity;

    invoke-virtual {v0}, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->finish()V

    .line 62
    return-void
.end method
