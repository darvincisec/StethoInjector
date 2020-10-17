.class public final Lcom/facebook/stetho/inspector/elements/Document$AttributeListAccumulator;
.super Ljava/util/ArrayList;
.source "Document.java"

# interfaces
.implements Lcom/facebook/stetho/inspector/elements/AttributeAccumulator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/inspector/elements/Document;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttributeListAccumulator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/facebook/stetho/inspector/elements/AttributeAccumulator;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 742
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public store(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 747
    invoke-virtual {p0, p1}, Lcom/facebook/stetho/inspector/elements/Document$AttributeListAccumulator;->add(Ljava/lang/Object;)Z

    .line 748
    invoke-virtual {p0, p2}, Lcom/facebook/stetho/inspector/elements/Document$AttributeListAccumulator;->add(Ljava/lang/Object;)Z

    .line 749
    return-void
.end method
