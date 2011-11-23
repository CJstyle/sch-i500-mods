.class public Lcom/sec/android/app/controlpanel/PackageInfoItemCache;
.super Ljava/lang/Object;
.source "PackageInfoItemCache.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2ecd227026L


# instance fields
.field items:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItemCache;->items:Ljava/util/HashMap;

    .line 8
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;
    .locals 1
    .parameter "packageName"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfoItemCache;->items:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 9
    .parameter "packageName"
    .parameter "appName"
    .parameter "codeSize"
    .parameter "dataSize"

    .prologue
    .line 10
    iget-object v8, p0, Lcom/sec/android/app/controlpanel/PackageInfoItemCache;->items:Ljava/util/HashMap;

    new-instance v0, Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;-><init>(Lcom/sec/android/app/controlpanel/PackageInfoItemCache;Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v8, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    return-void
.end method
