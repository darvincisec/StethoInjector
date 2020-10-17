.class Lcom/facebook/stetho/inspector/protocol/module/Runtime$CallArgument;
.super Ljava/lang/Object;
.source "Runtime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/inspector/protocol/module/Runtime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallArgument"
.end annotation


# instance fields
.field public objectId:Ljava/lang/String;
    .annotation runtime Lcom/facebook/stetho/json/annotation/JsonProperty;
        required = false
    .end annotation
.end field

.field public type:Lcom/facebook/stetho/inspector/protocol/module/Runtime$ObjectType;
    .annotation runtime Lcom/facebook/stetho/json/annotation/JsonProperty;
        required = false
    .end annotation
.end field

.field public value:Ljava/lang/Object;
    .annotation runtime Lcom/facebook/stetho/json/annotation/JsonProperty;
        required = false
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
