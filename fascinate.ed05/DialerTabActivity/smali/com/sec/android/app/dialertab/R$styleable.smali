.class public final Lcom/sec/android/app/dialertab/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final EdgeTriggerView:[I = null

.field public static final EdgeTriggerView_edgeWidth:I = 0x0

.field public static final EdgeTriggerView_listenEdges:I = 0x1

.field public static final Mapping:[I = null

.field public static final Mapping_detailColumn:I = 0x4

.field public static final Mapping_icon:I = 0x2

.field public static final Mapping_mimeType:I = 0x0

.field public static final Mapping_remoteViews:I = 0x1

.field public static final Mapping_summaryColumn:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2279
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/dialertab/R$styleable;->EdgeTriggerView:[I

    .line 2333
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/android/app/dialertab/R$styleable;->Mapping:[I

    return-void

    .line 2279
    nop

    :array_0
    .array-data 0x4
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
    .end array-data

    .line 2333
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
