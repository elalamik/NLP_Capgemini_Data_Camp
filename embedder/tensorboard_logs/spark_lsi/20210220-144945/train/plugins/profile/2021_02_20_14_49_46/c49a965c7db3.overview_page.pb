?	P8??Lz=@P8??Lz=@!P8??Lz=@	FDD????FDD????!FDD????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6P8??Lz=@B!??:@1?Q*?	???A??%??:??I6Vb?????Y??K???*	+??W@2U
Iterator::Model::ParallelMapV2?/?1"Q??!p!? )?@@)?/?1"Q??1p!? )?@@:Preprocessing2F
Iterator::ModelF????x??!??f?-J@)???eO??1L?;˘?2@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat????u6??!B??z0?4@)??ǘ????1buP?1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?????!Tr???/0@)???Xm??1F?V??p @:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?-y<-??!?
e?
?G@)???͎T?1'?h?? @:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceI/j?? ?!Ǿ(% ?@)I/j?? ?1Ǿ(% ?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor_`V(??l?!;T??@)_`V(??l?1;T??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapF$a?N??!????2@)???h?xd?1Um?Z
@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9FDD????I???	FX@Q?c'W?H@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	B!??:@B!??:@!B!??:@      ??!       "	?Q*?	????Q*?	???!?Q*?	???*      ??!       2	??%??:????%??:??!??%??:??:	6Vb?????6Vb?????!6Vb?????B      ??!       J	??K?????K???!??K???R      ??!       Z	??K?????K???!??K???b      ??!       JGPUYFDD????b q???	FX@y?c'W?H@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?3??C???!?3??C???"<
sequential_54/dense_162/MatMulMatMul??נ????!?' ????0"<
sequential_54/dense_164/SoftmaxSoftmaxח?`;Y??!?Z????"J
.gradient_tape/sequential_54/dense_163/MatMul_1MatMulp?CS??!???$??"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam?^????!????q??"J
.gradient_tape/sequential_54/dense_164/MatMul_1MatMul??????!???5t??"J
,gradient_tape/sequential_54/dense_162/MatMulMatMul??ej?k??!s?_??0"<
sequential_54/dense_163/MatMulMatMul???a??!6???G??0"K
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdamv?????!*??;??"J
,gradient_tape/sequential_54/dense_164/MatMulMatMul???????!????????0Q      Y@Y??(??(.@a?뺮?:U@q|!?n??P@y?f"???"?
both?Your program is POTENTIALLY input-bound because 91.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?67.8% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 