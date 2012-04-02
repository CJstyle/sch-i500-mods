.class public Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;
.super Ljava/lang/Object;
.source "FrequentListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewData"
.end annotation


# instance fields
.field public contact_id:I

.field public freq_id:I

.field public iSepTag:I

.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "tag"
    .parameter "_contact_id"
    .parameter "_number"
    .parameter "_name"
    .parameter "_id"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;->iSepTag:I

    .line 136
    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;->contact_id:I

    .line 137
    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;->number:Ljava/lang/String;

    .line 138
    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;->name:Ljava/lang/String;

    .line 139
    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;->freq_id:I

    .line 142
    iput p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;->iSepTag:I

    .line 143
    iput p2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;->contact_id:I

    .line 144
    iput-object p3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;->number:Ljava/lang/String;

    .line 145
    iput-object p4, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;->name:Ljava/lang/String;

    .line 146
    iput p5, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;->freq_id:I

    .line 147
    return-void
.end method
