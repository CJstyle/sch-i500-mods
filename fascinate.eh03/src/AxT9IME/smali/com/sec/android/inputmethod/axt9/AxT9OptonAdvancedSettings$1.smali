.class Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$1;
.super Ljava/lang/Object;
.source "AxT9OptonAdvancedSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter

    .prologue
    .line 134
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 135
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;

    const-class v2, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 137
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9OptonAdvancedSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 138
    const/4 v0, 0x1

    return v0
.end method
