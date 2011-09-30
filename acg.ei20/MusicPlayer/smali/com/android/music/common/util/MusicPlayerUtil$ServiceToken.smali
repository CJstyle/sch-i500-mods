.class public Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;
.super Ljava/lang/Object;
.source "MusicPlayerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/util/MusicPlayerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceToken"
.end annotation


# instance fields
.field mWrappedContext:Landroid/content/ContextWrapper;


# direct methods
.method constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;->mWrappedContext:Landroid/content/ContextWrapper;

    .line 77
    return-void
.end method
