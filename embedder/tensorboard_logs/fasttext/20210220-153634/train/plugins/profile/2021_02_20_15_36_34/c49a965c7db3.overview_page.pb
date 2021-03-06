?	s??=A?7@s??=A?7@!s??=A?7@	+?????+?????!+?????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6s??=A?7@?H?<?/6@1?>W[????AW$&??[??I?Z?{c???YN?»\ĳ?*	+??Z@2U
Iterator::Model::ParallelMapV2d????t??!(?Ο#>@)d????t??1(?Ο#>@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?]??_??!?_?І?;@)????ޘ?1??;?w?6@:Preprocessing2F
Iterator::Model???????!???ͼKI@)y??n?U??1?g??s4@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?1??l~?!	떆??@)?1??l~?1	떆??@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?T??C??!?z<sN?*@)????G|?1?
?_?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??/???!cHC2C?H@)??? 4Jw?1J?ܔ?S@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??#v?!??ι;(@)??#v?1??ι;(@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapɐc??!????
C0@)@4???i?1????@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9+?????I`?Gy?VX@Q??d?ҍ@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?H?<?/6@?H?<?/6@!?H?<?/6@      ??!       "	?>W[?????>W[????!?>W[????*      ??!       2	W$&??[??W$&??[??!W$&??[??:	?Z?{c????Z?{c???!?Z?{c???B      ??!       J	N?»\ĳ?N?»\ĳ?!N?»\ĳ?R      ??!       Z	N?»\ĳ?N?»\ĳ?!N?»\ĳ?b      ??!       JGPUY+?????b q`?Gy?VX@y??d?ҍ@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits???_[o??!???_[o??"=
sequential_202/dense_606/MatMulMatMul?K?8???!s????H??0"=
sequential_202/dense_607/MatMulMatMul?7K?؝?!?Mv??&??0"=
 sequential_202/dense_608/SoftmaxSoftmaxOȓAʝ?!?o?&??"-
IteratorGetNext/_1_SendJ_??????!???н??"K
-gradient_tape/sequential_202/dense_606/MatMulMatMul/?q?]??!???ߪS??0"K
-gradient_tape/sequential_202/dense_607/MatMulMatMul??~V0??!2ɂG????0"K
/gradient_tape/sequential_202/dense_607/MatMul_1MatMul??;???!??;{R??"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam?
@????!/?<????"=
sequential_202/dense_608/MatMulMatMul?
@????!ݛ=??&??0Q      Y@Y[ZZZZZ6@ajiiiiiS@qU???M@yZ	??,&??"?
both?Your program is POTENTIALLY input-bound because 92.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?59.1% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 