?	jg??R?A@jg??R?A@!jg??R?A@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-jg??R?A@?հ?e@@1}?͍?	??A?1^???Ic?????*	?t??W@2U
Iterator::Model::ParallelMapV2?T?t<f??!??'??@@)?T?t<f??1??'??@@:Preprocessing2F
Iterator::Model(?x?ߢ??!????(L@)3?<Fy??1/Ac&?6@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?)?TPQ??!?6????5@)ۧ?1???1??~?1@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceꗈ?ο}?!;??G?O@)ꗈ?ο}?1;??G?O@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?S;?Ԗ??!M?4s?+@)=???mw?1`؄?C?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip2?g?o??!gh?DZ?E@) ??cu?1?B.m@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor$Di?m?!??%s@)$Di?m?1??%s@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap\8?L??!NI?`??0@)?t???h?16y?8y@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIy?O >~X@Q?? ??8 @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?հ?e@@?հ?e@@!?հ?e@@      ??!       "	}?͍?	??}?͍?	??!}?͍?	??*      ??!       2	?1^????1^???!?1^???:	c?????c?????!c?????B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qy?O >~X@y?? ??8 @?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits2?L8n??!2?L8n??"=
sequential_246/dense_738/MatMulMatMul?u啛+??!??	?????0"=
 sequential_246/dense_740/SoftmaxSoftmax?")??٘?!B?.?????"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam?	?v?n??!} 7????"K
/gradient_tape/sequential_246/dense_739/MatMul_1MatMul/????O??!?3̂????"K
/gradient_tape/sequential_246/dense_740/MatMul_1MatMul????	??!?Pġa??"K
-gradient_tape/sequential_246/dense_738/MatMulMatMul鼂h? ??!mfEJ??0"=
sequential_246/dense_739/MatMulMatMulaz9v?}??!@2??
.??0"K
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam?,N?2f??!??L?<	??"K
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam@?lw#d??!?	?]???Q      Y@Y??(??(.@a?뺮?:U@q9???˞T@y???????"?
both?Your program is POTENTIALLY input-bound because 92.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?82.5% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 