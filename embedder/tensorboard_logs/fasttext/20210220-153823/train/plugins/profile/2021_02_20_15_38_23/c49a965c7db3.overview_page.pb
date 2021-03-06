?	2U0*?K7@2U0*?K7@!2U0*?K7@	?͈?????͈????!?͈????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails62U0*?K7@F?6?P5@1n??[??A?3?z??I࢓??;??Y>{.S????*	fffff?U@2U
Iterator::Model::ParallelMapV2?m5?????!?uZ???@)?m5?????1?uZ???@:Preprocessing2F
Iterator::Model3?}ƅ??!?X??5L@)Ŏơ~??1h?????8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??B????!?$?!w5@)?q ????1??!H?1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?O?mp??!)+?IsM)@)kH?c?Cw?1<\?
N<@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipl?,	PS??!Q?u	??E@)&:?,B?u?1?xt?>v@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?VBwI?u?!?)??^@)?VBwI?u?1?)??^@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor/PR`Li?!?7B?̆@)/PR`Li?1?7B?̆@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??ǵ?b??!???.0@)??? !?g?1?R???
@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?͈????I???m?&X@Q??kó@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	F?6?P5@F?6?P5@!F?6?P5@      ??!       "	n??[??n??[??!n??[??*      ??!       2	?3?z???3?z??!?3?z??:	࢓??;??࢓??;??!࢓??;??B      ??!       J	>{.S????>{.S????!>{.S????R      ??!       Z	>{.S????>{.S????!>{.S????b      ??!       JGPUY?͈????b q???m?&X@y??kó@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits8-?xʫ??!8-?xʫ??"=
sequential_210/dense_630/MatMulMatMul??=ᚧ?!$s Ȃ???0"-
IteratorGetNext/_1_Send?lj??g??!+?c9???"=
 sequential_210/dense_632/SoftmaxSoftmaxrT"lY??!?ѡ?ķ??"K
-gradient_tape/sequential_210/dense_630/MatMulMatMulxW3W?$??!0????0"=
sequential_210/dense_631/MatMulMatMul???K???!?o?D??0"K
/gradient_tape/sequential_210/dense_632/MatMul_1MatMul??<l?*??!????d???"K
-gradient_tape/sequential_210/dense_631/MatMulMatMulx?toJ??!?+?L??0"=
sequential_210/dense_632/MatMulMatMul\0?:y??!#	?@????0"K
/gradient_tape/sequential_210/dense_631/MatMul_1MatMul?&?`?Е?!?k?V?
??Q      Y@Y[ZZZZZ6@ajiiiiiS@qa???|?H@yj?Pd???"?
both?Your program is POTENTIALLY input-bound because 91.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?49.3% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 