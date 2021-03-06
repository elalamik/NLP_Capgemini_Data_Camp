?	?1>?^?B@?1>?^?B@!?1>?^?B@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?1>?^?B@?W)?uA@1???$???A??7i??I?Ҩ?I @*	?G?zW@2U
Iterator::Model::ParallelMapV2Н`?un??!?><@)Н`?un??1?><@:Preprocessing2F
Iterator::Model0H??????!?????J@)???j????1?????8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat䃞ͪϕ?!?`+?? 7@)$?`S?Q??1>?]2@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate???'?.??!?MKRe?-@)??Pk?w|?1im?)?/@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlices????{?!?-?z?@)s????{?1?-?z?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??E??(??!0?cG@)??~P)t?1?Bհ?`@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?????q?!?*???@)?????q?1?*???@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?c?? w??!???%?2@)?????j?1}>??c?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIf=MX??X@Qf??????Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?W)?uA@?W)?uA@!?W)?uA@      ??!       "	???$??????$???!???$???*      ??!       2	??7i????7i??!??7i??:	?Ҩ?I @?Ҩ?I @!?Ҩ?I @B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qf=MX??X@yf???????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits????????!????????"=
 sequential_244/dense_734/SoftmaxSoftmax?d8LLG??!k?T?????"=
sequential_244/dense_732/MatMulMatMul???mM??!?1Q???0"K
-gradient_tape/sequential_244/dense_732/MatMulMatMul!?Z?J??! ?}????0"K
/gradient_tape/sequential_244/dense_733/MatMul_1MatMulW"?(????!%????"K
/gradient_tape/sequential_244/dense_734/MatMul_1MatMul?t_??!???/????"=
sequential_244/dense_733/MatMulMatMul?t_??!???<???0"a
Dgradient_tape/sequential_244/batch_normalization_120/moments/truedivRealDiv+%??B??!??ĨT???"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdamWHc?>??!??g?DT??"K
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam?[???!?~
+???Q      Y@Y??(??(.@a?뺮?:U@q?-??/XT@y??0??[??"?
both?Your program is POTENTIALLY input-bound because 92.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?81.4% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 