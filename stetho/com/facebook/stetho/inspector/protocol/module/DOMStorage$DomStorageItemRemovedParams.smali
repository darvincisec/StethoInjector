.class public Lcom/facebook/stetho/inspector/protocol/module/DOMStorage$DomStorageItemRemovedParams;
.super Ljava/lang/Object;
.source "DOMStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/inspector/protocol/module/DOMStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DomStorageItemRemovedParams"
.end annotation


# instance fields
.field public key:Ljava/lang/String;
    .annotation runtime Lcom/facebook/stetho/json/annotation/JsonProperty;
        required = true
    .end annotation
.end field

.field public storageId:Lcom/facebook/stetho/inspector/protocol/module/DOMStorage$StorageId;
    .annotation runtime Lcom/facebook/stetho/json/annotation/JsonProperty;
        required = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
