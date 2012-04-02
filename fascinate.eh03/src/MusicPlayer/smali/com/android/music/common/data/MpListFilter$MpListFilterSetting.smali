.class public Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;
.super Ljava/lang/Object;
.source "MpListFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/data/MpListFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MpListFilterSetting"
.end annotation


# instance fields
.field public bIsID:Z

.field public iFilter_ID:I

.field public strFilterData:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/music/common/data/MpListFilter;


# direct methods
.method public constructor <init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "bIsID"
    .parameter "iFilter_ID"
    .parameter "strFilterData"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->this$0:Lcom/android/music/common/data/MpListFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean p2, p0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->bIsID:Z

    .line 78
    iput p3, p0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    .line 79
    iput-object p4, p0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->strFilterData:Ljava/lang/String;

    .line 80
    return-void
.end method
